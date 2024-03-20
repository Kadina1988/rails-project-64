# frozen_string_literal: true

module ApplicationHelper
  def sign_in_helper
    if user_signed_in?
      link_to t('new_post'), new_post_path, class: 'btn bnt-secondary'
    else
      link_to t('.sign_in'), new_user_session_path, class: 'btn bnt-secondary'
    end
  end

  def sign_out_helper
    if user_signed_in?
      link_to t('.sign_out'), destroy_user_session_path, data: { turbo_method: :delete }, class: 'btn bnt-secondary'
    else
      link_to t('.sign_up'), new_user_registration_path, class: 'btn bnt-secondary'
    end
  end
end
