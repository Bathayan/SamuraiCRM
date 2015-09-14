ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../../../../config/environment", __FILE__)

require 'rspec/rails'
require 'factory_girl_rails'
require 'database_cleaner'

ENGINE_RAILS_ROOT = File.join(File.dirname(__FILE__), '../')

Dir[File.join(ENGINE_RAILS_ROOT, "spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.include Samurai::Core::Engine.routes.url_helpers

end
