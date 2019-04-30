class RegistrationsController < Devise::RegistrationsController

  def update
    @user = User.find(current_user.id)
    email_changed = @user.email != params[:user][:email]
    is_google_account = !@user.provider.blank?
    binding.pry

    successfully_updated = if !is_google_account
                             @user.update_with_password(params.require(:user).permit(:name, :balance, :level, :usern_ame, :email, :password, :password_confirmation, :current_password))
                           else
                             @user.update_without_password(params.require(:user).permit(:name, :balance, :level, :user_name))
                           end

    if successfully_updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end

  protected

    def update_resources(resource, params)
      resource.update_without_password(params)
    end
end