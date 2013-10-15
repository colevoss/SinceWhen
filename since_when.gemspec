# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'since_when/version'

Gem::Specification.new do |spec|
  spec.name          = "since_when"
  spec.version       = SinceWhen::VERSION
  spec.authors       = ["colevoss"]
  spec.email         = ["voss.cole@gmail.com"]
  spec.description   = %q{Various Date and Time helpers}
  spec.summary       = %q{Returns time since given date in various formats}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
