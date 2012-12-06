# -*- encoding: utf-8 -*-
require File.expand_path('../lib/roman/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Craig Demyanovich"]
  gem.email         = ["cdemyanovich@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "roman"
  gem.require_paths = ["lib"]
  gem.version       = Roman::VERSION

  gem.add_development_dependency 'rspec', '2.12.0'
  gem.add_development_dependency 'guard-rspec', '2.3.0'
  gem.add_development_dependency 'rb-fsevent', '0.9.2'
end
