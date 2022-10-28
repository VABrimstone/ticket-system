module UsersHelper
  def name_or_email(user)
    if user.name.nil? || user.name.empty?
      user.email
    else
      user.name
    end
  end

  def user_role_for_display(role)
    case role
    when 'regular' then 'Пользователь'
    when 'admin'   then 'Администратор'
    end
  end

  def user_status_for_display(status)
    case status
    when 'active'   then 'Активен'
    when 'inactive' then 'Неактивен'
    end
  end

  def user_roles_hash
    User::roles.to_h do |role, db_representation|
      [user_role_for_display(role), role]
    end
  end

  def user_statuses_hash
    User::statuses.to_h do |status, db_representation|
      [user_status_for_display(status), status]
    end
  end
end
