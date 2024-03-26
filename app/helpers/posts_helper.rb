# frozen_string_literal: true

module PostsHelper
  def time_from_create(post)
    distance_of_time_in_words(Time.now - post.created_at)
  end
end
