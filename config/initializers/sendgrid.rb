ActionMailer::Base.delivery_method = :smtp 
  ActionMailer::Base.smtp_settings = {
    address:         'smtp.sendgrid.net',
    port:            '587',
    authentication:  :plain,
    user_name:       'apikey',
    password:        ENV['sendgrid_apy_key'],
    domain:          'qushneez.com',
    enable_starttls_auto: true
  }
