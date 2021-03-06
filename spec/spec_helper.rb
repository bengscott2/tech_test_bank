# frozen_string_literal: true

require 'timecop'

require 'simplecov'
require 'simplecov-console'
SimpleCov.start
SimpleCov.formatter = SimpleCov::Formatter::Console

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
