class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[show edit update]

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
      render :edit, notice: 'Не удалось отредактировать заявку'
    end
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def create_ticket_params
    params.require(:ticket).permit(
      :title,
      :message,
      :department_id
    )
  end

  def update_ticket_params
    params.require(:ticket).permit(
      :department_id,
      :status
    )
  end
end
