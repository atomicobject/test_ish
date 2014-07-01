# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_ish/version'

Gem::Specification.new do |spec|
  spec.name          = "test_ish"
  spec.version       = TestIsh::VERSION
  spec.authors       = ["David Crosby", "Shawn Anderson"]
  spec.email         = ["crosby@atomicobject.com", "shawn42@gmail.com"]
  spec.summary       = %q{Adds #ish helper for testing}
  spec.description       = %q{Adds #ish helper for testing}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
