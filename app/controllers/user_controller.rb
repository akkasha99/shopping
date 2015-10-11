class UserController < ApplicationController
  layout 'application'
  before_action :route

  def index

  end

  def route
    if user_signed_in?
      redirect_to '/admin' if current_user.is_admin?
      '/user/index' if current_user.is_admin == false
    else
      redirect_to '/users/sign_in'
    end
  end

end