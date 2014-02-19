# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'server/status/version'

Gem::Specification.new do |spec|
  spec.name          = "server-status"
  spec.version       = Server::Status::VERSION
  spec.authors       = ["Daniel Harlea"]
  spec.email         = ["daniel.harlea@gmail.com"]
  spec.summary       = %q{Example / test using Sinatra to expose a web service.}
  spec.description   = %q{Example of using Sinatra to build a web service.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency	"bundler", "~> 1.5"
  spec.add_development_dependency	"rake"
  spec.add_runtime_dependency		'log4r'
  spec.add_runtime_dependency		'sinatra'
  spec.add_runtime_dependency		'activesupport'
  spec.add_runtime_dependency		'json'
end
