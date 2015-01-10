# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'word_gen/version'

Gem::Specification.new do |spec|
  spec.name          = "word_gen"
  spec.version       = WordGen::VERSION
  spec.authors       = ["Stefan Schmidt"]
  spec.email         = ["mail@schlubbi.io"]
  spec.summary       = %q{Generate word lists}
  spec.description   = %q{Generate word lists and display them on STDOUT or save them to a file.}
  spec.homepage      = "https://github.com/schlubbi/word_gen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
