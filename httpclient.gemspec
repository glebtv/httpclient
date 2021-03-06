# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'httpclient/version'

Gem::Specification.new do |spec|
  spec.name = 'glebtv-httpclient'
  spec.version = HTTPClient::VERSION
  spec.authors = ['glebtv', 'Hiroshi Nakamura']
  spec.email = 'glebtv@gmail.com'
  spec.executables = ['httpclient']
  spec.homepage = 'http://github.com/glebtv/httpclient'
  spec.platform = Gem::Platform::RUBY
  spec.summary = 'Fork of httpclient with some fixes and patches I needed.'
  
  spec.license = 'ruby'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'lru_redux'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rdoc'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'climate_control'
end

