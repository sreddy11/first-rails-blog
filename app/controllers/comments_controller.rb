class CommentsController < ApplicationController

  before_filter :find_post 

  def index
    @comments = @post.comments
  end

  def show
    @comment = @post.comments.find(params[:id])
  end

  def new
    @comment = @post.comments.new
  end

  def create
    @comment = @post.comments.new(params[:comment])
    if @comment.save
      redirect_to(@comment.post)
    else
      render(:new)
    end
  end

  def edit
    @comment = @post.comments.find(params[:id])
  end

  def update
    @comment = @post.comments.find(params[:id])
    if @comment.update_attributes(params[:comment])
      redirect_to(@comment.post)
    else
      render(:edit)
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to(@comment.post)
  end


  private
  
  def find_post
    @post = Post.find(params[:post_id])
  end
end
