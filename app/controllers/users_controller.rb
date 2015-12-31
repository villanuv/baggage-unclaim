class UsersController < ApplicationController
  # before_action :require_id, only: [:show]

  def index
    @users = User.all.order(:username)
  end

  def show
    @user = User.find(params[:id])
    if @user.archetype == nil
      redirect_to users_path
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :birthday, :archetype)
  end

end