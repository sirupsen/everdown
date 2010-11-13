$:.unshift(File.dirname(__FILE__) + "/../lib/")
require 'everdown'
require 'riot'

def fixture(name)
  File.read("fixtures/#{name}")
end

Riot.verbose
