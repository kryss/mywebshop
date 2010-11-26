class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  before_filter :correct_user, :only => [:show]

  def show
    # @user assigned in correct_user filter
    @title = @user.name
    @page = (params[:page].nil?) ? "seller" : params[:page]
    @content_page = verif_shop_exist unless params[:content_page].nil?
  end

  def index
    @users = User.all
    @title = "All Users"
  end

  def verif_shop_exist
    
    if @user.shop.nil? && params[:content_page] != "my_shop"
      flash[:notice] = I18n.t(:create_shop_first)
      return "my_shop" 
    end
    (params[:content_page].nil?) ? "default_seller_content" : params[:content_page]
  end
  
  def correct_user 
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end

end
