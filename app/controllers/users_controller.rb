class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = @user.name
    if params[:page].nil?
      @page = "seller"
    else
      @page = params[:page]
    end
  end

  def index
    @users = User.all
    @title = "All Users"
  end

end
