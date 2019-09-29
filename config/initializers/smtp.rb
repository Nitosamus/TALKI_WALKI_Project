ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: 587,
  :domain => "http://groupe6.herokuapp.com",
  user_name: ENV["SENDGRID_LOGIN"],
  password: ENV["SENDGRID_PWD"],
  authentication: :login,
  enable_starttls_auto: true
}