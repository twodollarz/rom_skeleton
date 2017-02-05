require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module RomSkeleton
  class Application < Rails::Application
    require 'app_container'
  end
end
