require 'optparse'
require 'rhello/version'

module Rhello
  class Application
    OPTS = {}

    def run
      optparser = optparse OPTS
      optparser.parse!
      puts "Hello, world!"
    end

    def optparse opts
      parser = OptionParser.new
      parser.banner = "Usage: #{parser.program_name} [OPTION]..."
      parser.on('--help') {
        puts parser.to_s
        exit
      }
      parser.on('--version') {
        puts "#{parser.program_name} #{VERSION}"
        exit
      }
      parser
    end
  end
end
