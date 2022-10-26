class RegistrationsController < Devise::RegistrationsController
  private

  def account_update_params
    params.require(:user).permit(:email, :current_password, :password_confirmation, :name)
  end
end
