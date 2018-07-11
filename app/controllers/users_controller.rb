class UsersController < ApplicationController
  before_action :set_user, only: [:update]

  def index
  end

  def create
  end

  def show
  end

  def update
    @user.update! user_params

    redirect_to action: 'profile'
  end

  def destroy
  end

  def profile
  end

  def edit
  end

  private

  def set_user
    @user ||= User.find(user_params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :role)
  end
end
