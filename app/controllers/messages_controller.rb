class MessagesController < ApplicationController


  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @chatrooms = policy_scope(Chatroom)
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    authorize @message
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :photo)
  end


end
