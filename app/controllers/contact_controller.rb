class ContactController < ApplicationController


	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:notice] = "Thank you for your message. Our Concannon representatives will contact you within one business day!"
			render :new
		else
			flash.now[:error] = "There was an error sending your form, please try again."
			render :new
		end

		# name = params[:name]
		# email = params[:email]
		# subject = params[:phone_number]
		# message = params[:message]
		# ContactMailer.contact_email(name, email, body).deliver
		# redirect_to contact_path, notice: 'Message sent'
		
	end
end
