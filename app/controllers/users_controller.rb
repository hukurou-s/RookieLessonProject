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

  def new
    @user = User.new
  end

  def create
    user = params['user']
    User.create(
      name: user['name'],
      snum: user['snum'],
      grade: user['grade'],
      password: Digest::SHA256.hexdigest(user['password']),
      password_confirmation: Digest::SHA256.hexdigest(user['password_confirmation']),
      account: user['account']
    )
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user_params = params['user']
    user.update(
      name: user_params['name'],
      snum: user_params['snum'],
      grade: user_params['grade'],
      password: Digest::SHA256.hexdigest(user_params['password']),
      password_confirmation: Digest::SHA256.hexdigest(user['password_confirmation']),
      account: user_params['account']
    )
    redirect_to users_path
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end

  #def login_check
  #  if session[:user_id] == nil
  #    return redirect_to new_login_path, alert: 'ログインしてください。'
  #  end
  #end
end
