class PapersController < ApplicationController
  before_action :login_check
  def index
    @papers = Paper.all
  end

  def show
    @paper = Paper.find(params[:id])
  end

  def new
    @paper = Paper.new
  end

  def create
    paper = params['paper']
    Paper.create(
      title_J: paper['title_J'],
      title_E: paper['title_E'],
      Lead_author: paper['Lead_author'],
      Co_author: paper['Co_author'],
      abstract: paper['abstract']
    )
    redirect_to papers_path
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
