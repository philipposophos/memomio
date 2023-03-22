class MemoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user) #User can only see their own memories
    end
  end

  def create?
    true
  end

  def show?
    record.user == user
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
