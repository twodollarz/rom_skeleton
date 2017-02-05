class UserRelation < ROM::Relation[:sql]
  schema  :users, infer: true

  register_as :users
end
