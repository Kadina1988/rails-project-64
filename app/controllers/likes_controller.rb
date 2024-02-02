# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post, only: :create

  def create
    @like = @post.likes.build
    @like.user_id = current_user.id
    @like.save
    redirect_to post_path(@post)
  end

  def destroy
    @like = PostLike.find(params[:id])
    @like.destroy
    redirect_to post_path(@like.post)
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
