class UsersController < ApplicationController
  helper UsersHelper

  before_action :authenticate_user!

  def show
    @user = find_user
  end
end
