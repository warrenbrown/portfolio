class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save

      MessageNotifierMailer.send_notification_email(@contact).deliver
      flash[:notice] = 'Thank you your message has been sent I will get back to you as soon as possible.'
      redirect_to root_path
    else
      flash.now[:alert] = 'It seems you have some errors please try again'
      render 'new'
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
