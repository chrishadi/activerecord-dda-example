require 'active_record'
require 'yaml'

require_relative 'uri_type'

ActiveRecord::Type.register :uri, URIType

db_config = YAML::load(File.open('database.yaml'))
ActiveRecord::Base.establish_connection(db_config)

migration_path = Pathname.new('./migration')
ActiveRecord::MigrationContext.new(migration_path).migrate

require_relative 'link'

Link.create(url: URI('https://gist.github.com/discover'))
puts Link.first.url.host
