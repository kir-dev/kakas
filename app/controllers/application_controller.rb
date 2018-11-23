class ApplicationController < ActionController::Base
  def admin?
    current_user&.admin?
  end
  helper_method :admin?

  def require_admin
    redirect_to root_url unless current_user&.admin?
  end
end
