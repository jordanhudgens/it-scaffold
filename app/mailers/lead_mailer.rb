class LeadMailer < ApplicationMailer
  def homepage_email(msg)
  	@message = msg
    mail(to: ['support@devcamp.com', 'support2@devcamp.com'], subject: 'New Lead from Website')
  end
end
