module ApplicationHelper
  def alert_by_flash_type(type)
    case type
    when 'alert'   then 'danger'
    when 'notice' then 'success'
    else type
    end
  end
end
