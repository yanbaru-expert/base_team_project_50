class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(msg_params)
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def msg_params
    params.require(:message).permit(:title, :content)
  end
end
