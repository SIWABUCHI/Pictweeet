class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    Article.create(title: params[:title], image: params[:image], content: params[:content])
    redirect_to "/articles"
  end

  def destroy
  end

end
