module ApplicationHelper
  def nav_panel
    if user_signed_in?
      link_to 'New post', new_post_path
    else
      link_to 'Sign in', new_user_session_path, class: 'btn bnt-secondary'
    end
  end
end
