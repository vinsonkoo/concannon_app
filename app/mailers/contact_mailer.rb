class ContactMailer < ApplicationMailer

	def contact_email(user)
		@name = name
		@email = email
		@subject = subject
		@message = message

		mail(from: email, subject: subject)
	end
	
end
