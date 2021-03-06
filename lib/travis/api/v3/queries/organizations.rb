module Travis::API::V3
  class Queries::Organizations < Query
    def for_member(user)
      Models::Organization.joins(:users).where(users: user_condition(user))
    end
  end
end
