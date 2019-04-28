class AppointmentsController < ApplicationController

  before_action :authenticate_user!

  def index
    @appointments = current_user.appointments.all
  end
  def new
    @appointment = new_appointment
  end

  def create
    appointment = current_user.appointments.new(appointment_params)
    #@appointment.user.update_balance(@appointment.minutes.strftime("%M").to_i)
    appointment.save
    redirect_to user_appointment_path(appointment.user.id, appointment.id)
  end

  def show
    app = find_appointment
    valid_user(app)
  end
  def edit
    app = find_appointment
    valid_user(app)
  end

  def update
    appointment = find_appointment
    appointment.update(appointment_params)
    redirect_to user_appointments_path(appointment.user, appointment)
  end
  def destroy
    appointment = find_appointment
    appointment ? appointment.destroy : (redirect_to user_appointments_path(current_user), flash[:alert] = "The appointment does not belong to you")
    redirect_to user_appointments_path(current_user), alert: "Appointment Deleted"
  end

end