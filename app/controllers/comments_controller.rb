class CommentsController < ApplicationController
  
  before_action :authenticate_user!

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.post.comment.new(comment_params)
    if @comment.save
      redirect_to @post
    else
      flash[:bad_comment] = "Cannot be Blank"  
    end
  end


  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to @comment.post
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @comment.destroy
    redirect_to @post
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :post_id)
  end
end