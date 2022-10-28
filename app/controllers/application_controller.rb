class ApplicationController < ActionController::Base
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError do |exception|
    flash[:alert] = "Недостаточно прав"
    redirect_back(fallback_location: root_path)
  end

  before_action :authenticate_user!
end
