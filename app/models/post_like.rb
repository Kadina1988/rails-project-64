# frozen_string_literal: true
require_relative 'like_validator'

class PostLike < ApplicationRecord
  belongs_to :post, counter_cache: :likes_count
  belongs_to :user

  validate do |like|
    LikeValidator.new(like).validate
  end
end
