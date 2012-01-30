source 'http://rubygems.org'


gem 'sinatra', '~> 1.3.2'  
gem 'vesper', '~> 1.1.0', require: false
  

Dir["./plugins/**/Gemfile"].each {|gemfile| self.send(:eval, File.open(gemfile, 'r').read)}