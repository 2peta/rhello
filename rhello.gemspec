# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rhello/version"

Gem::Specification.new do |s|
  s.name        = "rhello"
  s.version     = Rhello::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["2peta"]
  s.email       = ["2peta@suppin.org"]
  s.homepage    = ""
  s.summary     = %q{produce a familiar, friendly greeting}
  s.description = %q{rhello is another implementation of the hello world program}
  s.bindir      = 'bin'

  s.rubyforge_project = "rhello"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
