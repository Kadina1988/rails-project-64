# frozen_string_literal: true

module LikesHelper
  def managing_likes(post)
    like = PostLike.find_by(post_id: post.id, user_id: current_user.id)
    if post.likes.include?(like)
      link_to 'Like', post_like_path(like.post, like), data: { turbo_method: :delete }
    else
      link_to 'Like', post_likes_path(post), data: { turbo_method: :post }
    end
  end
end
