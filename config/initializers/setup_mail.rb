ActionMailer::Base.smtp_settings = {
	:address   => "smtp.mandrillapp.com",
	:port      => 25, # ports 587 and 2525 are also supported with STARTTLS
	:enable_starttls_auto => true, # detects and uses STARTTLS
	:user_name => "bryan.knouse@gmail.com",
	:password  => "hc3ZPMOS5E0as8QpK-SkcQ", # SMTP password is any valid API key
	:authentication => 'login', # Mandrill supports 'plain' or 'login'
	:domain => 'ramyashouracademy.com', # your domain to identify your server when connecting
}