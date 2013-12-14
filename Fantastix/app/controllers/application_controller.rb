class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   # Add this line so that each time an action is being made by the DeviseController it will call the method defined below
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # << - appends to a vector, we want to extend the list of params 
    devise_parameter_sanitizer.for(:sign_up) << :account_type << :username << :first_name << :last_name << :avatar
    devise_parameter_sanitizer.for(:account_update) << :account_type << :username << :first_name << :last_name << :avatar
  end
end