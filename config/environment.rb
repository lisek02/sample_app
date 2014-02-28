# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SampleApp::Application.initialize!

# Speed up tests by lowering BCrypt's cost function.
require 'bcrypt'
silence_warnings do
	BCrypt::Engine::DEFAULT_COST = BCrypt::Engine::MIN_COST
end