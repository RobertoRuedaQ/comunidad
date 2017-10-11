class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name,:last_name,:gender,:document_type,:document_id,:cellphone,:day_of_birth,:profession,:offer_services,:owner,:active,:admin, :apartment_id,hobbies_ids:[]])
    devise_parameter_sanitizer.permit(:user_update, keys: [:email, :name,:last_name,:gender,:document_type,:document_id,:cellphone,:day_of_birth,:profession,:offer_services,:owner,:active,:admin, :apartment_id,hobbies_ids:[]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :name,:last_name,:gender,:document_type,:document_id,:cellphone,:day_of_birth,:profession,:offer_services,:owner,:active,:admin, :apartment_id,hobbies_ids:[]])
  end
end
