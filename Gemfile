source 'https://rubygems.org'

ruby "2.2.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Add class level respond_to method
gem 'responders'

# Allow Rack to timeout if requests take too long.
gem "rack-timeout"

# Geocoding support
gem 'geocoder'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Puma as the app server
gem 'puma'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails'

  gem 'factory_girl_rails'
end

group :test do
  # For mocking web requests in the test environment
  gem 'webmock'

  # For recording live web requests and then playing them back later without
  # using an actual internet connection.
  gem 'vcr'

  # For gathering code coverage metrics
  gem "codeclimate-test-reporter", require: nil
end

group :production do
  # Ensure that this application is optimally configured for Heroku.
  gem 'rails_12factor'
end
