class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user

    mail(to: @place_owner.email,
         subjec: "A comment has been added to your #{@place.name}")
  end
end
