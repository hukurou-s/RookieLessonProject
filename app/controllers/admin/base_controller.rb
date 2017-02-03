# coding: utf-8
class Admin::BaseController < ApplicationController

  before_action :login_check, :admin_check
  def admin_check
    redirect_to new_login_path, alert: '管理者専用です。' unless User.find(session[:user_id]).admin?
  end
end
