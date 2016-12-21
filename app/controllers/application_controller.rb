class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name,:last_name, :email, :password) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :last_name, :phone_number, :email, :password, :current_password, :is_female, :date_of_birth, :avatar) }
    end
end
