class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = find_user
  end

end
