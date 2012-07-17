# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hetzner-configurable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Wynand van Dyk"]
  gem.email         = ["wynand.van.dyk@hetzner.co.za"]
  gem.description   = %q{The standard 'configurable' pattern}
  gem.summary       = %q{We sometimes need to configure a class, this gem provides that functionality}
  gem.homepage      = ""

  gem.name          = "hetzner-configurable"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.version       = Hetzner::Configurable::VERSION
  gem.add_development_dependency 'rspec', '~> 2.11'
end
