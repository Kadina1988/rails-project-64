# frozen_string_literal: true

require 'rails/test_help'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)
    # Setup all fixtu .
    fixtures :all
    # Add more helper methods to be used by all tests here...
  end
end
