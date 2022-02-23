class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def resolve
    scope.all #=> Politic.all
  end

  def show?
    user == record.user || user == record.politic.user
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    user == record.user || user == record.politic.user
  end

  def edit?
    update?
  end

  def destroy?
    user == record.user || user == record.politic.user
  end

end
