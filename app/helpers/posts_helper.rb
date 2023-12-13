# frozen_string_literal: true

module PostsHelper
  def show_comment(all_com)
    all_com.each do |key, value|
      concat(content_tag(:p, key.content))
      all_com(value) if value.is_a?(Hash)
    end
  end
end
