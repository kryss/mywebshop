class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = @user.name
    @page = (params[:page].nil?) ? "seller" : params[:page]
    @content_page = (params[:content_page].nil?) ? "default_seller_content" : params[:content_page]
  end

  def index
    @users = User.all
    @title = "All Users"
  end

end
