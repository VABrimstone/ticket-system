class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[show edit update]
  before_action :authorize_user

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(create_ticket_params)
    @ticket.user = current_user

    if @ticket.save
      redirect_to @ticket, notice: 'Заявка успешно создана'
    else
      render :new, notice: 'Не удалось создать заявку', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @ticket.update(update_ticket_params)
      redirect_to ticket_url(@ticket), notice: 'Заявка отредактирована'
    else
      render :edit, notice: 'Не удалось отредактировать заявку', status: :unprocessable_entity
    end
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def authorize_user
    ticket = @ticket || Ticket
    authorize ticket
  end

  def create_ticket_params
    params.require(:ticket).permit(
      :title,
      :message,
      :department_id,
      :mentioned_user_id
    )
  end

  def update_ticket_params
    params.require(:ticket).permit(
      :department_id,
      :status,
      :mentioned_user_id
    )
  end
end
