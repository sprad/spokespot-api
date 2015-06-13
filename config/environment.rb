# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Globally use camel case keys in JSON responses.
Jbuilder.key_format camelize: :lower
