class AppointmentsController < ApplicationController
  def index
    @appointments = current_user.appointments
  end
  def new
    @appointment = current_user.appointments.new
  end
  def create
    @appointment = current_user.appointments.new(appointment_params)
    @appointment.save
    redirect_to user_appointment_path(@appointment.user, @appointment)
  end
  def show
    byebug
    @appointment = Appointment.find(params[:id])
  end
  def edit
    @appointment = current_user.appointments.find(params[:id])
  end
  def update
    @appointment = Appointment.find(params[:id])
  end
  def delete
    appointment = current_user.appointments.find(params[:id])
    appointment ? appointment.destroy : (redirect_to user_appointments_path(current_user), flash[:alert] = "The appointment does not exists")
    redirect_to user_appointments_path(current_user)
  end

  private

    def appointment_params
      params.require(:appointment).permit(:location_id, :coach_id, :arrival_time, :minutes)
    end
end