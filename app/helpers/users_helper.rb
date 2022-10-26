module UsersHelper
  def name_or_email(user)
    if user.name.nil? || user.name.empty?
      user.email
    else
      user.name
    end
  end

  def role_for_display(user)
    case user.role
    when 'regular' then 'Пользователь'
    when 'admin'   then 'Администратор'
    end
  end

  def status_for_display(user)
    case user.status
    when 'active'   then 'Активен'
    when 'inactive' then 'Неактивен'
    end
  end
end
