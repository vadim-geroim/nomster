class NotificationMailer < ApplicationMailer
	default from: "no-reply@nomsterapp.com"

	def comment_added
		mail(to: "vgeroim.qa@gmail.com",
	    	 subjec: "A comment has been added to your place")
	end
end
