class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def new

  end

  def create
    render plain: params[:article]
  end

  def show
    id = params[:id]
    @article = Article.find {|item| item[:id] == id.to_i}
  end
end