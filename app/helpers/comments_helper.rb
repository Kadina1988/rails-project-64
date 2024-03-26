# frozen_string_literal: true

module CommentsHelper
  def create_time(obj)
    obj.created_at.strftime('%d %B %H:%M')
  end
end
