# frozen_string_literal: true

module CommentsHelper
  def nested_comments(comments)
    comments.map do |_comment, sub_comments|
      unless sub_comments.nil?
        render(partial: 'comments/comment', collection: comments) + content_tag(:div, nested_comments(sub_comments),
                                                                                class: 'nested_comment')
      end
    end.join.html_safe
  end
end
