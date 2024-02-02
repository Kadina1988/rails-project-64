# frozen_string_literal: true

class AddUserIdToPostLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :post_likes, :user, foreign_key: true
  end
end
