class CrawlingSoonMailer < ApplicationMailer
  def qushneez_email_notification(email_sign_up)
    @email_sign_up = email_sign_up
    mail(to: @email_sign_up.email, subjuct: "qushneez crawling your way soon!")
  end
end
