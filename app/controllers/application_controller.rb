# frozen_string_literal: true

class ApplicationController < ActionController::Base
  around_action :switch_locale

  def switch_locale(&action)
    lang = params[:lang] || I18n.default_locale
    I18n.with_locale(lang, &action)
  end

  def default_url_options(options = {})
    { lang: I18n.locale }
  end
end
