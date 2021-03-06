class Contact < MailForm::Base
  attribute :name_company,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone_number
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Concannon Contact Form",
      :to => "jim@concannonagency.com",
      :from => %("#{name_company}" <#{email}>)
    }
  end
end