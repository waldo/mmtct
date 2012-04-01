class ApplicationController < ActionController::Base
  protect_from_forgery

  def email_admins(subject, html_body)
    Pony.mail({
      :to => "#{ENV['EMAIL_ADMINS']}",
      :from => "#{ENV['EMAIL_FROM']}",
      :subject => subject,
      :html_body => html_body
    }) if Rails.env.production?
  end
end
