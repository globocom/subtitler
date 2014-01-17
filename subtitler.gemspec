# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'subtitler/version'

Gem::Specification.new do |spec|
  spec.name          = "subtitler"
  spec.version       = Subtitler::VERSION
  spec.authors       = ["Mateus Del Bianco"]
  spec.email         = ["mateus@delbianco.net.br"]
  spec.description   = %q{Subtitle editor and converter}
  spec.summary       = %q{Reads SubRip (.srt) and Sofni (.sub) subtitles, batch edits subtitle times and outputs SubRip (.srt) subtitle. Auto-detects input subtitle encoding. }
  spec.homepage      = "https://github.com/globocom/subtitler"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "debugger"
end
