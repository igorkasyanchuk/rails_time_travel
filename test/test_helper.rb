# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require 'combustion'
Combustion.path = 'test/dummy'
Combustion.initialize! :active_record, :active_storage, :active_job do
  config.active_job.queue_adapter = :inline if Rails::VERSION::MAJOR >= 6
end

require "rails/test_help"


# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("fixtures", __dir__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.file_fixture_path = ActiveSupport::TestCase.fixture_path + "/files"
  ActiveSupport::TestCase.fixtures :all
end
