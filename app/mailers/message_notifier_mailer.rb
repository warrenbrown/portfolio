class MessageNotifierMailer < ApplicationMailer
  default from: 'info@tcmediallc.com'

  #send message notification when a user sends a message thru contact format
  def send_notification_email(contact)
    @contact = contact
    mail(to: 'warren@katapultmedia.com', subject: 'Contact Form Message')
  end
end
