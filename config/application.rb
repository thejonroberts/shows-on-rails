require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Shows
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # use structure.sql - UPGRADE NOTE: THESE ARE NOT DEFAULT???
    config.active_record.schema_format = :sql

    config.generators.template_engine = :haml

    # Phony / PhonyRails - limit to supported countries to limit memory usage
    # NOTE: not sure that PhonyRails doesn't override this...
    Phony::Config.load(only: ['US'])
    PhonyRails.default_country_code = 'US'
  end
end
