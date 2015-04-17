# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capachrome/version'

Gem::Specification.new do |spec|
  spec.name          = "capachrome"
  spec.version       = Capachrome::VERSION
  spec.authors       = ["Hashrocket Workstation"]
  spec.email         = ["dev@hashrocket.com"]
  spec.summary       = %q{capybara driver for chrome}
  spec.description   = %q{capybara driver for chrome}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "capybara"
  spec.add_runtime_dependency "multi_json"
  spec.add_runtime_dependency "curb"
  spec.add_runtime_dependency "childprocess"
  spec.add_runtime_dependency "net-http-persistent"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
