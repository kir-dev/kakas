class ApplicationController < ActionController::Base
  def admin?
    current_user&.admin?
  end
  helper_method :admin?
end
