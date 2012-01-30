# Example:
#  >> rake irb
  desc 'Starts an IRB session with the app loaded'
  task :irb do
    require 'irb'
    ARGV.clear
    IRB.start
  end