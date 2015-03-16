class ApplicationMailer < ActionMailer::Base
  default :from => "info@ramyashouracademy.com"

  def application_confirmation(application)
  	@application = application
  	mail(:to => application.email, :subject => "Ramy Ashour Squash Academy Application")
  end
  def admin_confirmation(application)
  	@application = application
  	mail(:to => 'rayzan@aol.com', :subject => "A new application has been submitted.")
  end
  def ramyadmin_confirmation(application)
  	@application = application
  	mail(:to => 'squaasher@yahoo.com', :subject => "A new application has been submitted.")
  end
  def webadmin_confirmation(application)
  	@application = application
  	mail(:to => 'bryan.knouse@gmail.com', :subject => "A new application has been submitted.")
  end
end