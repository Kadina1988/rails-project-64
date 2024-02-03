# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsProject64
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1
    # config.active_support.default_message_encryptor_serializer = :json
    # config.active_support.use_marshal_serialization = false
    # config.active_support.fallback_to_marshal_deserialization = false
    # config.active_support.default_message_encryptor_serializer
    # config.active_support.fallback_to_marshal_deserialization
    # config.active_support.use_marshal_serialization

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
