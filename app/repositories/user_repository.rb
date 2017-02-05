class UserRepository < ROM::Repository[:users]
  def [](id)
    users.where(id: id).as(Account::User).one
  end
end
