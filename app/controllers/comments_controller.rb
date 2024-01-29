# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post

  def create
    @comment = @post.comments.build(comment_params)
    @comment.creator = current_user.email
    if @comment.save
      redirect_to post_path(@post)
    else



      render 'posts/show'
    end
  end

  private

  def comment_params
    params.require(:post_comment).permit(:content, :parent_id)
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
