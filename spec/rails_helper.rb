require 'simplecov' unless ENV["COV"] == 'false'

SimpleCov.start 'rails' do
  add_filter '/spec/'
  add_filter '/app/views'

  add_group 'All', 'app/'
  add_group 'Controllers', 'app/controllers'
  add_group 'Jobs', 'app/jobs'
  add_group 'Lib', 'app/lib'
  add_group 'Models', 'app/models/'
  add_group 'Model Concerns', 'app/models/concerns'
end unless ENV["COV"] == 'false' # to speed circle up a bit

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|

  config.example_status_persistence_file_path = "spec/failures.txt"
  config.filter_run_excluding :manual => true

  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

RSpec::Matchers.define_negated_matcher(:not_change, :change)
RSpec::Matchers.define_negated_matcher(:not_receive, :receive)
