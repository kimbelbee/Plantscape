class JungleplantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true  # user_as_owner_or_admin?
  end

  def new?
  	true # user_as_owner_or_admin?
  end

  def create?
  	true # user_as_owner_or_admin?
  end

  private

  def user_as_owner_or_admin?
    user == record.user || user.admin?
  end
end
