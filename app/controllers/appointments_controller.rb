class AppointmentsController < ApplicationController
  def index
    @user = current_user
    @flights = @user.appointments
  end
end