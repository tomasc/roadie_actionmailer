# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roadie_actionmailer/version'

Gem::Specification.new do |spec|
  spec.name          = "roadie_actionmailer"
  spec.version       = RoadieActionmailer::VERSION
  spec.authors       = ["Tomas Celizna"]
  spec.email         = ["tomas.celizna@gmail.com"]
  spec.summary       = %q{An ActionMailer interceptor using roadie to inline css.}
  spec.description   = %q{An ActionMailer interceptor using roadie to inline css.}
  spec.homepage      = "https://github.com/tomasc/roadie_actionmailer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "minitest"
end
