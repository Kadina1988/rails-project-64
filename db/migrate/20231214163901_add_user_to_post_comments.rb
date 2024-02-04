# frozen_string_literal: true

class AddUserToPostComments < ActiveRecord::Migration[7.0]
  def change
    add_column :post_comments, :user, :string
  end
end
