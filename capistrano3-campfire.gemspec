# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano3/campfire/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano3-campfire'
  spec.version       = Capistrano3::Campfire::VERSION
  spec.authors       = ["Yury Velikanau"]
  spec.email         = ["yury.velikanau@gmail.com"]
  spec.summary       = %q{Simple Campfire notifications for Capistrano 3}
  spec.homepage      = 'https://github.com/spectator/capistrano3-campfire'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  gem.add_dependency 'tinder', '~> 1.9.4'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
