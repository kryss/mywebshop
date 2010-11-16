class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def index
    @users = User.all
    @title = "All Users"
  end

end
