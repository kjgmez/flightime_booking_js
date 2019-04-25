class AppointmentsController < ApplicationController
  def index
    @user = current_user
    @flights = @user.appointments
  end
  def new
    @appointment= Appointment.new
  end
  def show
    @appointment = Appointment.find(params[:id])
  end
  def edit
    @appointment = Appointment.find(params[:id])
  end
  def update
    @appointment = Appointment.find(params[:id])
  end
  def delete
    appointment = current_user.appointments.find(params[:id])
    appointment ? appointment.destroy : redirect_to user_appointments_path(current_user), error: "The appointment does not exists"
    redirect_to user_appointments_path(current_user)
  end
end