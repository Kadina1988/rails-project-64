# frozen_string_literal: true

class PostComment < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :post

  has_ancestry

  validates :content, length: { minimum: 5, maximum: 400 }
end
