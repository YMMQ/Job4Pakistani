class ApplicationController < ActionController::Base
	include ApplicationHelper
	
  protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_up_path_for(resource)
		@user
	end

	def after_update_path_for(resource)
		@user
	end
	
	def after_sign_in_path_for(resource)
		@user
	end
	
	protected
		
		def configure_permitted_parameters
			devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name)}
			devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :current_password, :password , :password_confirmation, :first_name, :last_name, :avatar)}
		end

end
