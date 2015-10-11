class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :route_user

  def after_sign_in_path_for(resource)
    if current_user.is_admin?
      '/admin'
    else
      '/user/index'
    end
  end

  def route_user
    if user_signed_in?
      '/admin' if current_user.is_admin?
      '/user/index' if current_user.is_admin? == false
    else
      '/users/sign_in '
    end
  end
end
