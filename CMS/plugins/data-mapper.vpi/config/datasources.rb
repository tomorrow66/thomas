# Choosing a database
#
# Choose one database connection per environment


# Gems
#
# Make sure to uncomment the associated gem for you database in Gemfile.


# Rake tasks
#
# Though rake doesn't run on Rack, you can still pass it a RACK_ENV variable.
# If you don't pass a RACK_ENV variable, it defaults to development.
# Example:
#  >> rake db:upgrade RACK_ENV=production


# More info at http://datamapper.org/


# Development database
configure :development do

  # Shows DataMapper queries alongside page requests:
  DataMapper::Logger.new $stdout, :debug

  # Memory
  # DataMapper.setup :default, 'sqlite::memory:'
  
  # SQLite
  DataMapper.setup :default, "sqlite://#{Dir.pwd}/data/development.sqlite3"
  
  # MySQL
  # DataMapper.setup :default, 'mysql://username:password@host_url/database_name:port'
  
  # PostreSQL
  # DataMapper.setup :default, 'postgres://username:password@host_url/database_name:port'
  
end


# Production database
configure :production do
  
  # Shows DataMapper queries alongside page requests:
  # DataMapper::Logger.new $stdout, :debug
  
  # Memory
  # DataMapper.setup :default, 'sqlite::memory:'
  
  # SQLite
  DataMapper.setup :default, "sqlite://#{Dir.pwd}/data/production.sqlite3"
  
  # MySQL
  # DataMapper.setup :default, 'mysql://username:password@host_url/database_name:port'
  
  # PostgreSQL
  # DataMapper.setup :default, 'postgres://username:password@host_url/database_name:port'
  
end