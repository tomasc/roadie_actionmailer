# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roadie_actionmailer/version'

Gem::Specification.new do |spec|
  spec.name          = "roadie_actionmailer"
  spec.version       = RoadieActionmailer::VERSION
  spec.authors       = ["Tomáš Celizna", "Asger Behncke Jacobsen"]
  spec.email         = ["tomas.celizna@gmail.com", "asger@8kilo.com"]
  spec.summary       = %q{ActionMailer interceptor to inline CSS using the Roadie gem.}
  spec.description   = %q{ActionMailer interceptor to inline CSS using the Roadie gem.}
  spec.homepage      = "https://github.com/tomasc/roadie_actionmailer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
