class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@infunnelapps.com'
  layout 'mailer'

  # helpers
  helper :frontend_urls
end
