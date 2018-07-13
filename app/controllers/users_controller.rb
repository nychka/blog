class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:update, :edit]

  def index
  end

  def create
  end

  def show
  end

  def update
      if @user.update(user_params)
        redirect_to action: 'profile', notice: 'User was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
  end

  def profile
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :role)
  end
end
