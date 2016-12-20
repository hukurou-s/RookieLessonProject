class UsersController < ApplicationController
  def index
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
      password: user['password'],
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
      password: user_params['password'],
      account: user_params['account']
    )
    redirect_to users_path
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end
end
