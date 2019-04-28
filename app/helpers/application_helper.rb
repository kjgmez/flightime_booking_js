module ApplicationHelper
  def find_appointment
    current_user.appointments.find(params[:id])
  end
end
