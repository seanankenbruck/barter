# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
BarterRaleigh::Application.initialize!

ActionMailer::Base.delivery_method = :sendmail

ActionMailer::Base.smtp_settings = {
	:user_name => 'dacur',
	:password => 'sendgrid111',
	:domain => 'localhost:3000',
	:address => 'smtp.sendgrid.net',
	:port => 587, 
	:authentication => :plain,
	:enable_starttls_auto => true
}
