class DepartmentPolicy < ApplicationPolicy
  def index?
    user_is_admin_and_active?(user)
  end

  def new?
    user_is_admin_and_active?(user)
  end

  def create?
    user_is_admin_and_active?(user)
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
end
