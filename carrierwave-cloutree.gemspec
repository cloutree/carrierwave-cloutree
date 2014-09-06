# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave/cloutree/version'

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-cloutree"
  spec.version       = Carrierwave::Cloutree::VERSION
  spec.authors       = ["Ivan Shamatov"]
  spec.email         = ["status.enable@gmail.com"]
  spec.summary       = %q{Cloutree Storage adapter for Carrierwave}
  spec.description   = %q{Use cloutree instead of local storage}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "carrierwave"
  spec.add_dependency "cloutree"
end
