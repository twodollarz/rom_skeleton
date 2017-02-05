class ArticlesController < ApplicationController
  def index
    articles = container['repositories.article'].listing

    @articles = ArticleDecorator.decorate(articles)
  end

  def new
  end

  def create
    create_article = container['rom'].commands[:articles].create
    create_article.call(
      title: params[:title],
      body: params[:body],
      status: Media::Status.values.index(:public),
      author_id: current_user.id,
      published_at: Time.now
    )
  end
end
