class ArticlesController < ApplicationController
  before_action :set_catalog
  before_action :set_article, only: [:edit, :show, :destory, :new_comment, :comments, :all_comments]

  def index 
    @articles = @catalog.articles.all
  end    

  def new 
    @article = @catalog.articles.new
  end   

  def create 
    @article = @catalog.articles.new(article_params)
    if @article.save 
      redirect_to [@catalog,@article]
    else 
      render 'new'
    end 
  end   

  def show; end

  def edit;end

  def update 
    @article = @catalog.articles.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to [@catalog,@article] 
    else 
      render 'edit'
    end
  end

  def destroy 
    @article = @catalog.articles.find(params[:id])
    @article.destroy
  end

  # Initializes empty comment object with commentable object(@article)
  # /catalogs/:catalog_id/articles/:article_id/new_comment
  # GET
  def new_comment
    @comment = Comment.new
  end


  # Creates a comment for Article
  # /catalogs/:catalog_id/articles/:article_id/comments
  # POST
  def comments
    @comment = Comment.new(comment: params[:comments][:comment], commentable: @article)
    if @comment.save
    else
    end
  end

  # Returns all comments for commentable
  # /catalogs/:catalog_id/articles/:article_id/all_comments
  # GET
  def all_comments
    @comments = @article.comments
  end
  
  
  


  private

  def article_params
    params.require(:article).permit(:title, :long_description, :short_description, :status  )
  end

  def set_catalog
    @catalog = Catalog.find(params[:catalog_id])
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
