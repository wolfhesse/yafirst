# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
puts lib
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Yafirst/version'

Gem::Specification.new do |spec|
  spec.name          = "Yafirst"
  spec.version       = Yafirst::VERSION
  spec.authors       = ["alpha"]
  spec.email         = ["wolfgang.schuessel@gmail.com"]
  spec.description   = %q{yasssu routines to access fulltext index and semantic engines}
  spec.summary       = %q{yasssu service adapter}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
