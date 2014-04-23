# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smoking/version'

Gem::Specification.new do |spec|
  spec.name          = "smoking"
  spec.version       = Smoking::VERSION
  spec.authors       = ["Leonard Garvey"]
  spec.email         = ["lengarvey@gmail.com"]
  spec.summary       = %q{A simple gem to generate and run smoke tests in your Rails app.}
  # spec.description   = %q{TODO:}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
