require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Activitiesapp
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators do |g|
      g.system_tests = nil
      g.template_engine :haml
    end
  end
end
