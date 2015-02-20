class ApplicationMailer < ActionMailer::Base
  default :from => "info@ramyashouracademy.com"

  def application_confirmation(application)
  	@application = application
  	mail(:to => application.email, :subject => "Ramy Ashour Squash Academy Application")
  end
end