class MessagesController < ApplicationController

  def create 
    
    @message = Message.new (message_params)
    if @message.save 
      puts "message saved!"
      flash.notice = "Thank you for your message!"

      #This is where the mailer stuff goes
      ContactMailer.with(@message).contact_email.deliver_now

    else
      puts "message not saved!"
      puts @message.errors.full_messages 
    end
    redirect_to root_path
  end

  def index 
    if current_user && !current_user.admin 
      @messages = Message.all 
    else
      redirect_to "/contact"
    end
  end


  private
  def message_params
    params.require(:message).permit(:name,:email,:message)
  end


end
