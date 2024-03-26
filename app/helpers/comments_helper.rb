# frozen_string_literal: true

module CommentsHelper
  def created_time(obj)
    t = obj.created_at
    if t.year == Time.zone.now.year
      l(t, format: '%d %B, %H:%M')
    else
      l(t, format: '%d %B %Y')
    end
  end
end
