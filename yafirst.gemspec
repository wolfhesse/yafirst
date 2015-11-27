# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
#puts lib
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yafirst/version'

Gem::Specification.new do |spec|
  spec.name          = 'yafirst'
  spec.version       = Yafirst::VERSION
  spec.authors       = %w(wolfhesse rogeraaut alpha)
  spec.email         = %w(wolfgang.schuessel@gmail.com)
  spec.description   = %q{yasssu adaptive toolbelt}
  spec.summary       = %q{yasssu service adapter}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.5'

end
