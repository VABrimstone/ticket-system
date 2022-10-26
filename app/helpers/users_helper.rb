module UsersHelper
  def name_or_email(user)
    if user.name.nil? || user.name.empty?
      user.email
    else
      user.name
    end
  end

  def role_for_display(role)
    case role
    when 'regular' then 'Пользователь'
    when 'admin'   then 'Администратор'
    end
  end

  def status_for_display(status)
    case status
    when 'active'   then 'Активен'
    when 'inactive' then 'Неактивен'
    end
  end

  def roles_hash
    User::roles.to_h do |role, db_representation|
      [role_for_display(role), role]
    end
  end

  def statuses_hash
    User::statuses.to_h do |status, db_representation|
      [status_for_display(status), status]
    end
  end
end
