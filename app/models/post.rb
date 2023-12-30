# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category
  has_many :comments, class_name: 'PostComment'
  has_many :likes, class_name: 'PostLike'
end
