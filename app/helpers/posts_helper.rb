# frozen_string_literal: true

module PostsHelper
  def nest(attributes)
    attributes.each do |attr|
      concat(content_tag(:h4, attr.content))
      next unless attr.children?

      attr.descendants.each do |ch|
        concat(content_tag(:p, ch.content))
      end
    end
  end
end
