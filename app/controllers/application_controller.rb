  class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    rescue_from CanCan::AccessDenied do |exception|
      redirect_to main_app.root_path, :alert => exception.message
    end
    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phonenumber])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phonenumber])
    end
  protect_from_forgery with: :null_session
end
