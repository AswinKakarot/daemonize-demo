require 'daemons'
require 'optparse'


worker_count = 5

worker_count.times.each do |count|
  Daemons.run('demo.rb')
end