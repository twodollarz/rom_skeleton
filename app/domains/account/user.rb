module Account
  class User < BaseEntity
    attribute :id            , Types::Int
    attribute :name          , Types::String
  end
end
