# coding: utf-8
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
      title_ja: paper['title_ja'],
      title_en: paper['title_en'],
      lead_author: paper['lead_author'],
      co_author: paper['co_author'],
      abstract: paper['abstract']
    )
    redirect_to papers_path, alert: '登録完了しました。'
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
