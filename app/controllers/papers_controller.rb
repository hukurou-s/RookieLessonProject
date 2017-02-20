class PapersController < ApplicationController
  before_action :login_check
  def index
    @papers = Paper.all
  end

  def show
    @paper = Paper.find(params[:id])
  end
end
