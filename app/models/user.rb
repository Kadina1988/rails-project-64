# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, foreign_key: 'creator_id'
  has_many :comments, class_name: 'PostComment'
  has_many :likes, class_name: 'PostLike'
end
