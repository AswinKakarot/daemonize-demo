require 'daemons'
require 'optparse'

@worker_count = 0
parser = OptionParser.new do|opts|
  opts.on('-workers', '--worker_count  worker_count', 'WorkerCount') do |worker_count|
    puts worker_count
    @worker_count = worker_count.to_i rescue 1
  end
end

parser.parse!


@worker_count.times.each do |count|
  Daemons.run('demo.rb')
end