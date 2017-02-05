class ArticleRelation < ROM::Relation[:sql]
  schema :articles, infer: true do
    associations do
      belongs_to :user, as: :author, foreign_key: :author_id
    end
  end

  use :pagination
  per_page 10

  register_as :articles
end
