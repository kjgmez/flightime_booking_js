module AppointmentsHelper

  def find_appointment
    current_user.appointments.find(params[:id]) rescue nil
  end

  def valid_user(app)
    if app
      @appointment = app
    else
      redirect_to user_appointments_path(current_user), alert: "This appointment does not belong to you"
    end
  end

  def new_appointment
    current_user.appointments.new
  end

  def appointment_params
    params.require(:appointment).permit(:location_id, :coach_id, :arrival_time, :minutes)
  end

end