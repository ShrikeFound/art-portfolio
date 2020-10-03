class ContactMailer < ApplicationMailer
  
  def contact_mail
    @name    = name 
    @email   = email
    @message = message
    mail(to: 'alfonso.martinez@shrikefound.com',subject: "Contact Message from #{@name}")
  end

end
