# frozen_string_literal: true

class LikeValidator < ActiveModel::Validator
  def validate(like)
    return unless like_exists?(like)

    like.errors.add(:base, 'Such a like already exists')
  end

  private

  def like_exists?(like)
    PostLike.where(post_id: like.post_id).where(user_id: like.user_id).present?
  end
end
