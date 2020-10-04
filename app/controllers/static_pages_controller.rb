class StaticPagesController < ApplicationController
  def about
    flash.now.notice = "did it!"
  end

  def contact
    @message = Message.new
  end
end
