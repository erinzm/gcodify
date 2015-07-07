# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gcodify/version'

Gem::Specification.new do |spec|
  spec.name          = "gcodify"
  spec.version       = Gcodify::VERSION
  spec.authors       = ["Liam Marshall"]
  spec.email         = ["liam@cpan.org"]

  spec.summary       = %q{Gcodify makes writing gcode by hand fun!}
  spec.description   = %q{Gcodify is a Ruby DSL which generates gcode from a high-level,
    Ruby-based description language. It's kind of like hand-written CAM.}
  spec.homepage      = "https://github.com/ArchimedesPi/gcodify"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
end
