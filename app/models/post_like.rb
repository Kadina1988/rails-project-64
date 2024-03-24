# frozen_string_literal: true

class PostLike < ApplicationRecord
  belongs_to :post, counter_cache: :likes_count
  belongs_to :user

  validate do |like|
    Validator::LikeValidator.new(like).validate
  end
end
