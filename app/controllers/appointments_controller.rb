class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = current_user.appointments.ordered_by_arrival_time
    #byebug
  end
  def new
    @appointment = new_appointment
  end

  def create
    appointment = current_user.appointments.create(appointment_params)
    refresh_balance_new(appointment)
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
    refresh_balance_update(appointment)
    appointment.update(appointment_params)
    refresh_balance_new(appointment)
    redirect_to user_appointments_path(appointment.user, appointment)
  end

  def destroy
    appointment = find_appointment
    refresh_balance_update(appointment)
    appointment ? appointment.destroy : redirect_when_error
    redirect_to user_appointments_path(current_user), alert: "Appointment Successfully Deleted"
  end

end