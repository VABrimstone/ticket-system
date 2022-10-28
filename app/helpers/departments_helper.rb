module DepartmentsHelper
  def department_status_for_display(status)
    case status
    when 'active'   then 'Активен'
    when 'inactive' then 'Неактивен'
    end
  end

  def department_statuses_hash
    Department::statuses.to_h do |status, db_representation|
      [department_status_for_display(status), status]
    end
  end
end
