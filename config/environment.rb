require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:user_name => ENV["SENDGRID_LOGIN"],
	:password => ENV["SENDGRID_PWD"],
	:domain => "https://talki-walki2019.herokuapp.com",
	:address => "smtp.sendgrid.net",
	:port => 587,
	:authentication => :plain,
	:enable_starttls_auto => true
}

