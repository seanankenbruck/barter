# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
BarterRaleigh::Application.initialize!

ActionMailer::Base.smtp_settings = {
	address: 'localhost',
	port: 25, 
	domain: 'localhost',
	user_name: 'user',
	password: 'password',
	authentication: :plain
}
