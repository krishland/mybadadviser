class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    user == record.user || user == record.politic.user
  end

  def index?
    user == record.politic.user
  end

  def create?
    true
  end

  def update?
    user == record.user || user == record.politic.user
  end

  def destroy?
    user == record.user || user == record.politic.user
  end

end
