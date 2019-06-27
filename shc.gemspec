# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shc/version'

Gem::Specification.new do |spec|
  spec.name          = "shc"
  spec.version       = SHC::VERSION
  spec.authors       = ["Stéphane FEUGA"]
  spec.email         = ["sfeuga@member.fsf.org"]
  spec.summary       = %q{Simple HTTP and HTTPS Client in Ruby}
  spec.description   = %q{A simple HTTP and HTTPS client in Ruby to query any RESTful API}
  spec.homepage      = "https://github.com/sfeuga/simple-http_s-client"
  spec.license       = "GNU/GPL v3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "multi_json"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "travis"
end
