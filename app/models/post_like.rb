# frozen_string_literal: true

class PostLike < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :post, counter_cache: :likes_count
  belongs_to :user

  validates_with LikeValidator
end
