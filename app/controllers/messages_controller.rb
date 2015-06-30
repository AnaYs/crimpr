class MessagesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_area

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.build(message_params)
    @message.user_id = current_user.id
    @message.save!

    @path = area_conversation_path(@area, @conversation)
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def set_area
    @area = Area.find(params[:area_id])
  end
end
