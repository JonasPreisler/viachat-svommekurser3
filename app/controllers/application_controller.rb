class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

	def after_sign_in_path_for(resource)
	  teams_path
	end
	def after_sign_up_path_for(resource)
	  edit_user_registration_path
	end
    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:team_id])
    end

end
