# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post, only: :create

  def create
    @like = @post.likes
                 .merge(current_user.likes)
                 .build

    @like.save
    redirect_to post_path(@post)
  end

  def destroy
    @like = PostLike.find(params[:id])
    @like.destroy if @like.user_id == current_user.id
    redirect_to post_path(@like.post)
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
