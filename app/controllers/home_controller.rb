class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to controller: 'posts' if current_user.user?
  end
end
