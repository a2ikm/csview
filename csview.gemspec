# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csview/version'

Gem::Specification.new do |spec|
  spec.name          = "csview"
  spec.version       = Csview::VERSION
  spec.authors       = ["Masato Ikeda"]
  spec.email         = ["masato.ikeda@gmail.com"]

  spec.summary       = %q{Simple CSV and TSV viewer in command line.}
  spec.description   = %q{Simple CSV and TSV viewer in command line.}
  spec.homepage      = "https://github.com/a2ikm/csview"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "terminal-table"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
