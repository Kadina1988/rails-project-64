# frozen_string_literal: true

class LikeValidator
  def initialize(like)
    @like = like
  end

  def validate
    return if PostLike.where(post_id: @like.post_id).where(user_id: @like.user_id).blank?

    @like.errors.add :base, 'Such a like already exists'
  end
end
