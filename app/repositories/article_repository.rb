class ArticleRepository < ROM::Repository[:articles]
  relations :users

  def [](id)
    aggregate(:author).
      articles.
      where(id: id).
      as(Media::Article).
      one
  end

  def listing(per_page: 20, page: 1)
    aggregate(:author).
      articles.
      per_page(per_page).
      page(page).
      as(Media::Article).
      to_a
  end
end
