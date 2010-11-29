class ShopsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  before_filter :shop_exist?, :only => [:product_mgt, :client_mgt, :subscription, :services, :shop_status]

  def shop_status
    session[:cur_tab] = "seller"    
  end
  
  def product_mgt
    @collections = current_shop.collections.paginate(:page => params[:page])    
  end

  def client_mgt
    
  end
  
  def subscription
    
  end
  
  def services
    
  end

  def index
    @shops = Shop.paginate(:page => params[:page])
  end

  def new
    @title = "New Shop"
    @shop = Shop.new if current_user.shop.nil?
  end

  def show
    
  end

  def update
    @shop = current_user.shop;
    if @shop.update_attributes(params[:shop])
      flash[:success] = "Shop information updated."
      redirect_back_or root_path
    else
      @title = "Edit Shop"
      render 'edit'
    end
  end

  def create
    current_user.shop = Shop.new(params[:shop])
    if current_user.shop.save
      flash[:success] = "Shop created"
      redirect_back_or root_path
    else
      @title = "Create a shop"
      render :new
    end
  end

  def destroy
    current_user.shop.destroy
    flash[:success] = "Shop destroyed."
    redirect_back_or root_path
  end

  def edit
    # defined in before_filter correct_user 
    # @user = User.find(params[:id])
    @shop = current_user.shop
  end
  private 
  
  def shop_exist?
    store_location
    render :shop_status if current_shop.nil?
  end

end
