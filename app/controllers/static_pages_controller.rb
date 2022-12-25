class StaticPagesController < ApplicationController
  def index
    if current_user.admin?
      redirect_to tickets_path
    else
      redirect_to new_ticket_path
    end
  end
end
