class ShopsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]

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

end
