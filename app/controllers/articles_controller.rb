class ArticlesController < ApplicationController
  def index
    if params[:query].present?
      @articles = Article.search(params[:query], load: true)
    else
      @articles = Article.all
    end
  end
  
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new(article_id: @article.id)
  end
end
