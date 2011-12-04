# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vidego/version"

Gem::Specification.new do |s|
  s.name        = "vidego"
  s.version     = Vidego::VERSION
  s.authors     = ["Mike Bethany"]
  s.email       = ["mikbe.tk@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Easily convert videos for steaming and local use on your portable devices.}
  s.description = %q{Vidego, short for Video-To-Go, is a super simple way to convert your video library to a common format that supports all of your devices like iPods, iPads, and Android devices. It'll even work with Xbox 360s and PS3s.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
