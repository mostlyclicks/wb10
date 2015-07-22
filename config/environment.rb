# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Wb10::Application.initialize!

  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :domain         => 'wieserbrothers.com',
    :enable_starttls_auto => true
  }
