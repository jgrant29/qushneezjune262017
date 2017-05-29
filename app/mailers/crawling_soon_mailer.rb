class CrawlingSoonMailer < ApplicationMailer
  def welcome
    mail(to: "justin@accr.biz", subjuct: "qushneez crawling your way soon!")
  end
end
