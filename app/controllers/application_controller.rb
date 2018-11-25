class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def admin?
    current_user&.admin?
  end
  helper_method :admin?

  def require_admin
    redirect_to root_url unless current_user&.admin?
  end
  helper_method :require_admin

  protected
  def configure_permitted_parameters
    
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, 
      :password_confirmation, :current_password, :image, :image_cache, :remove_image, :introduction) }
  end
end
