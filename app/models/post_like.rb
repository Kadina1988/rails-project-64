class PostLike < ApplicationRecord
  belongs_to :post#, counter_cashe: :likes_count
  belongs_to :user
end
