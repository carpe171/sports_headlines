class ContactForm < MailForm::Base
  attr_accessor :name
  extend ActiveModel::Callbacks

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file,      :attachment => true

  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "carpe171@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

  def deliver
    if valid?
      run_callbacks :deliver
    else
      false
    end
  end
  
end