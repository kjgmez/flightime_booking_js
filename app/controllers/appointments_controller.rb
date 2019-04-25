class AppointmentsController < ApplicationController
  def index
    @appointments = current_user.appointments
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
    appointment ? appointment.destroy : (redirect_to user_appointments_path(current_user), flash[:alert] = "The appointment does not exists")
    redirect_to user_appointments_path(current_user)
  end
end