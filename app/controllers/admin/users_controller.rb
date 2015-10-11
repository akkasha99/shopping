class Admin::UsersController < ApplicationController
  before_action :route_abc

  def admin_sign_in
  end

  def index
    # if user_signed_in?
    #   redirect_to '/admin/users/index1' if current_user.is_admin?
    #   redirect_to '/user/index' if current_user.is_admin == false
    # else
    #   redirect_to '/admin/admin_sign_in'
    # end
  end

  def route_abc
    if user_signed_in?
       '/admin' if current_user.is_admin?
      redirect_to '/user/index' if current_user.is_admin == false
    else
      admin_sign_in
    end

  end
end
