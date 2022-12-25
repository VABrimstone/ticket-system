module TicketsHelper
  def ticket_status_for_display(status)
    case status
    when 'open'     then 'Открыта'
    when 'closed'   then 'Закрыта'
    when 'resolved' then 'Разрешена'
    end
  end

  def ticket_statuses_hash
    Ticket::statuses.to_h do |status, db_representation|
      [ticket_status_for_display(status), status]
    end
  end
end
