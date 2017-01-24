# coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def login_check
    if session[:user_id] == nil
      return redirect_to new_login_path, alert: 'ログインしてください。'
    end
  end
end
