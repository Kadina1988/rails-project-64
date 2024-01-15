# frozen_string_literal: true

module LikesHelper
  def managing_likes(post)
    like = PostLike.find_by(post_id: post.id, user_id: current_user.id)
    if post.likes.include?(like)
      button_to 'Like', like_path(like), method: :delete
    else
      button_to 'Like', post_likes_path(post), method: :post
    end
  end
end
