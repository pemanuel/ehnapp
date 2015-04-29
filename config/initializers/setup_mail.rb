ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.gmail.com',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  'appsupport@ehnusa.com',
  :password             =>  'Jamil2007',
  :domain               =>  'ehnusa.com',
  :enable_starttls_auto =>  true
}