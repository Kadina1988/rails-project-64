# frozen_string_literal: true
require_relative 'validators/like_validator'

class Post < ApplicationRecord
  belongs_to :category
  belongs_to :creator, class_name: 'User'

  has_many :comments, class_name: 'PostComment', dependent: :destroy
  has_many :likes, class_name: 'PostLike', dependent: :destroy

  validates :body, :title, presence: true
  validates :title, length: { minimum: 4, maximum: 100 }
  validates :body, length: { minimum: 2, maximum: 400 }
end
