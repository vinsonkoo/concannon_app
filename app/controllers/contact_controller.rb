class ContactController < ApplicationController


	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:notice] = "Thank you for your message. We will contact you soon!"
		else
			flash.now[:error] = "Cannot send message."
			render :new
		end

		# name = params[:name]
		# email = params[:email]
		# subject = params[:subject]
		# message = params[:message]
		# ContactMailer.contact_email(name, email, body).deliver
		# redirect_to contact_path, notice: 'Message sent'
		
	end
end
