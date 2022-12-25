class TicketPolicy < ApplicationPolicy
  def index?
    user_is_admin_and_active?(user)
  end

  def show?
    record.user == user || user.admin?
  end

  def new?
    user_is_logged_in_and_active?(user)
  end

  def create?
    user_is_logged_in_and_active?(user)
  end

  def edit?
    user_is_admin_and_active?(user)
  end

  def update?
    user_is_admin_and_active?(user)
  end

  private

  def user_is_admin_and_active?(user)
    user.admin? && user.active?
  end

  def user_is_logged_in_and_active?(user)
    user.active?
  end
end
