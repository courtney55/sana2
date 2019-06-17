class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "courtney55@knights.ucf.edu",
        subject: "A comment has been added to your place")
  end
end
