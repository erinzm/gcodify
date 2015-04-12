# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gcodify/version'

Gem::Specification.new do |spec|
  spec.name          = "gcodify"
  spec.version       = GCodify::VERSION
  spec.authors       = ["Liam Marshall"]
  spec.email         = ["archimedespi3141@gmail.com"]
  spec.summary       = %q{Ruby DSL which generates GCode. Make manual GCode composition fun and simple!}
  #spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "archimedespi.github.io/gcodify"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "docile", "~> 1.1.5"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "yard", "~> 0.8.7.6"
end
