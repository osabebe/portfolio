class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :DESC)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to :action => "index", :id => @article.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to action: :index
  end

  private
  def article_params
    params.require(:article).permit(:image, :site_url, :date)
  end
end
