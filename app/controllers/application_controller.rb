# coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def login_check
    if session[:user_id] == nil
      return redirect_to new_login_path, alert: 'ログインしてください。'
    end
  end

  def authenticate_admin!
    user = session[:user_id] && User.find_by(id: session[:user_id])
    raise ActionController::RoutingError.new('Not Found') unless user.present? && user.admin?
  end

end
