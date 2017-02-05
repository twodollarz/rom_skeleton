AppContainer.configure do |container|
  container.register('rom') do
    ROM.env
  end

  container.register('repositories.article') do
    ArticleRepository.new(container['rom'])
  end

  container.register('repositories.user') do
    UserRepository.new(container['rom'])
  end

  container.register('commands.article') do
    CreateArticle
  end
end
