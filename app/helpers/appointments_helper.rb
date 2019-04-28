module AppointmentsHelper

  def find_appointment
    current_user.appointments.find(params[:id]) rescue nil
  end

  def valid_user(app)
    if app
      @appointment = app
    else
      redirect_when_error
    end
  end

  def new_appointment
    current_user.appointments.new
  end

  def appointment_params
    params.require(:appointment).permit(:location_id, :coach_id, :arrival_time, :minutes)
  end

  def redirect_when_error
    redirect_to user_appointments_path(current_user), flash[:alert] = "The appointment specified does not belong to you"
  end

end