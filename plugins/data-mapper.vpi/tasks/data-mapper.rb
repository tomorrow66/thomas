# Example:
#  >> rake build
  desc 'Builds the app from scratch'
  task :build => ['dm:setup'] do
    exec 'rackup'
  end
  
# Database specific tasks
  namespace :dm do
  
  # Example:
  #  >> rake dm:setup
    desc 'Creates a new seeded database'
    task :setup => ['dm:migrate', 'dm:seed']
  
  # Example:
  #  >> rake dm:upgrade
    desc 'Auto upgrades the database, non-descructive'
    task(:upgrade) { DataMapper.auto_upgrade! }
  
  # Example:
  #  >> rake dm:migrate
    desc 'Auto migrates the database, destructive'
    task(:migrate) { DataMapper.auto_migrate! }
  
  # Example:
  #  >> rake dm:seed
    desc 'Seeds the database'
    task(:seed) { require "#{Dir.pwd}/data/seeds.rb" }
  
  # Example
  #  >> rake dm:transmogrify
    desc 'Alters the data'
    task(:transmogrify) { require "#{Dir.pwd}/data/transmogrify.rb" }
  
  end