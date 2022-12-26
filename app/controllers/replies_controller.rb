class RepliesController < ApplicationController
  before_action :set_ticket
  before_action :set_reply, only: %i[show edit update destroy]

  def create
    @reply = @ticket.replies.build(reply_params)
    @reply.user = current_user

    if @reply.save
      redirect_to @ticket, notice: 'Комментарий оставлен'
    end
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:ticket_id])
  end

  def set_reply
    @reply = @ticket.replies.find(params[:reply_id])
  end

  def reply_params
    params.require(:reply).permit(:comment)
  end
end
