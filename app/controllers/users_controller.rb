class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    byebug
    @user = User.find(current_user)
  end

end
