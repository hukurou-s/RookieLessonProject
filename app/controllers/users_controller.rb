# coding: utf-8
class UsersController < ApplicationController

  before_action :login_check
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update]

  def index
    #if session[:user_id] == nil
      #return redirect_to new_login_path, alert: 'ログインしてください。'
    #end
    @users = User.all
  end
end
