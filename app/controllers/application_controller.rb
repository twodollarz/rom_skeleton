class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def container
    AppContainer.instance
  end

  def current_user
    container['repositories.user'][1]
  end
end
