# frozen_string_literal: true

class ApplicationController < ActionController::Base
  around_action :switch_locale

  def switch_locale(&action)
    locale = if !params[:locale].nil? && I18n.available_locales.include?(params[:locale].to_sym)
               params[:locale]
             else
               I18n.default_locale
             end

    I18n.with_locale(locale, &action)
  end

  def default_url_options(_options = {})
    { locale: I18n.locale }
  end
end
