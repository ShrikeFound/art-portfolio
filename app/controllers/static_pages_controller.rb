class StaticPagesController < ApplicationController
  def about
  end

  def contact
    @message = Message.new
  end
end
