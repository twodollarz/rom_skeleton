class CreateArticle < ROM::Commands::Create[:sql]
  relation :articles
  register_as :create
  result :one
end
