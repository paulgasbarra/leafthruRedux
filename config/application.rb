require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Leafthru
  class Application < Rails::Application
<<<<<<< HEAD

=======
    config.assets.precompile += %w( readers.js )
>>>>>>> 84aef86727a9f8443bd6ac6e992193f6ae8bc6d5
  end
end
