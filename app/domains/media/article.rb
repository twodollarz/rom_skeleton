module Media
  class Article < BaseEntity
    attribute :id            , Types::Int
    attribute :author        , Account::User
    attribute :title         , Types::String
    attribute :body          , Types::String
    attribute :status        , Types::Int

    attribute :published_at  , Types::DateTime
  end
end
