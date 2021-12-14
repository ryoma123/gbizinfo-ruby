require 'gbizinfo'
require 'vcr'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Gbizinfo.configure do |config|
  config.token = ENV['ACCESS_TOKEN']
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr_cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.allow_http_connections_when_no_cassette = false
  c.debug_logger = File.open('log', 'w')
  c.filter_sensitive_data('<ACCESS_TOKEN>') { ENV['ACCESS_TOKEN'] }
end
