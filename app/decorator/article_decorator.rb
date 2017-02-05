class ArticleDecorator < BaseDecorator
  def published_date
    published_at.strftime('%F')
  end

  def truncated_body
    body.truncate(80)
  end
end
