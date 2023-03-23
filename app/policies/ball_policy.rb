class BallPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

  end

  def show?
    true
  end

  def shake?
    true
  end

  def update?
    record.user == user
  end

  def create?
    # any logged in user can create a ball
    !user.nil?
  end

  def destroy?
    update?
  end

end
