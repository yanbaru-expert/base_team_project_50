class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    Message.create(msg_params)
  end

  private

  def msg_params
    params.require(:message).permit(:title, :content)
  end
end
