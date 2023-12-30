# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])

    @like = @post.likes.build
    @like.save
    redirect_to post_path(@post)
  end
end
