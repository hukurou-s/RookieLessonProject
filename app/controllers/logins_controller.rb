# coding: utf-8
class LoginsController < ApplicationController
  def create
    user = User.find_by(account: params[:account])
    return redirect_to new_login_path, alert: 'ユーザが存在しないかパスワードが間違っています。' if user.nil? || user.password != Digest::SHA256.hexdigest(params[:password])
    session[:user_id] = user.id
    redirect_to users_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_login_path
  end
end
