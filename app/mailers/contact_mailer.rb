class ContactMailer < ApplicationMailer
	# default from: vinson@hindsitemetrics.com

	def new
		@contact = Contact.new
	end
		
	def contact_email(user)
		@name = name
		@email = email
		@subject = subject
		@message = message

		mail(to: 'vinson@hindsitemetrics.com', from: email, subject: subject)
	end

end
