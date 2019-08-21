class AppointmentsController < ApplicationController
  before_action :authenticate_user!


  def index
    if params[:user_id]
      @appointments = current_user.appointments.ordered_by_arrival_time
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @appointments}
      end
    else
      @users = User.all
      render "appointments"
    end
  end

  def new
    @appointment = new_appointment
  end

  def create
    #byebug
    @appointment = current_user.appointments.build(appointment_params)
    if @appointment.save
      refresh_balance_new(@appointment)
      redirect_to user_appointment_path(@appointment.user.id, @appointment.id)
    else
      flash.now[:alert] = @appointment.errors.full_messages.join(", ")
      render :new
    end
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