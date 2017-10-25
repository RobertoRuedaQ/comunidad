class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      current_user.orders.new
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, :notice => 'Recuerda iniciar sesión o registrarse'
    end
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name,:last_name,:gender,:document_type,:document_id,:cellphone,:day_of_birth,:profession,:offer_services,:owner,:active,:admin, :apartment_id,hobbies_ids:[]])
    devise_parameter_sanitizer.permit(:user_update, keys: [:email, :name,:last_name,:gender,:document_type,:document_id,:cellphone,:day_of_birth,:profession,:offer_services,:owner,:active,:admin, :apartment_id,hobbies_ids:[]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :name,:last_name,:gender,:document_type,:document_id,:cellphone,:day_of_birth,:profession,:offer_services,:owner,:active,:admin, :apartment_id,hobbies_ids:[]])
  end
  
end
