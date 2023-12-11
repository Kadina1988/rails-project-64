class CommentsController < ApplicationController
  def create
    # debugger
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.save
    redirect_to post_path(@post)
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end

  private

  def comment_params
    params.require(:post_comment).permit(:content)
  end
end
