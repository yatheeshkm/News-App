class CommentsController < ApplicationController
  before_action :set_commentable
  def index
    
  end
  
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment: params[:comment][:comment], commentable: @commentable)
    if @comment.save
      redirect_to catalog_articles_path(@catalog, @commentable)
    else
      Rails.logger.debug @comment.errors.full_messages
      redirect_to new_catalog_article_comment_path(@catalog, @commentable)
    end
  end

  private

  def set_commentable
    @commentable = Article.find(params[:article_id]) if params[:article_id].present? 
    @commentable = Poll.find(params[:poll_id]) if params[:poll_id].present? 
    @commentable = Gallery.find(params[:gallery_id]) if params[:gallery_id].present? 
    @catalog = Catalog.find(params[:catalog_id])
  end
  
  
end