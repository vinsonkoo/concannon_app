class ContactMailer < ApplicationMailer

	def new
		@contact = Contact.new
	end
		
	def contact_email(user)
		@name = name
		@email = email
		@phone_number = phone_number
		@company_name = company_name
		@message = message

		mail(to: 'jim@concannonagency.com.com', from: email, subject: subject)
	end

end
