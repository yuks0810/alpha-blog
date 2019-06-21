class ArticlesController < ApplicationController
  def new 
    @article = Article.new
  end
  
  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end
  # create action does not need a template as def new does
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
  
end
