require 'vcr'
require 'webmock/rspec'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  # Only turn this option on when you need to record new HTTP requests:
  # c.default_cassette_options = { record: :new_episodes } 
end
