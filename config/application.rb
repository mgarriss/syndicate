require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Syndicate
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Add additional load paths for your own custom dirs
    # config.load_paths += %W( #{config.root}/extras )

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Configure generators values. Many other options are available, be sure to check the documentation.
    # config.generators do |g|
    #   g.orm             :active_record
    #   g.template_engine :erb
    # end
    
    config.active_record.schema_format = :sql 
    
    # config.generators do |g|
    #   g.template_engine :haml
    #   g.test_framework  :shoulda
    #   g.fixture_replacement :factory_girl
      
    #   g.fallbacks[:shoulda] = :test_unit
    # end
    
    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]
  end
end

Lucene::Config[:store_on_file] = true
Lucene::Config[:storage_path] = '.db/lucene-db'
Neo4j::Config[:storage_path] = "./db/neo4j"
Neo4j.stop
Neo4j.start rescue nil
Neo4j.info

at_exit do
  Neo4j.stop
end

#require 'neo4j/extensions/activemodel'
#require 'neo4j/extensions/reindexer'

# module Node; end
Dir[File.expand_path( '../../app/neo4j/nodes', __FILE__) + "/*.rb"].each do |file|
  load file
end

APP_CONFIG = YAML.load_file(File.join( Rails.root, 'config', "config.#{Rails.env}.yml"))
