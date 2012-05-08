# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nethack_utils/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['OZAWA Sakuro']
  gem.email         = ['sakuro@2238club.org']
  gem.description   = %q{Small NetHack utilities}
  gem.summary       = <<-EOF.gsub(/^  /, '')
  NethackUtils is a utility library that provides following features.
  
  * Date/Time methods to test
  ** Friday 13th
  ** Phase of the Moon(Full/New moon)
  * Rumors, or Fortune cookies
  EOF
  gem.homepage      = 'https://github.com/sakuro/nethack_utils'
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'nethack_utils'
  gem.require_paths = ['lib']
  gem.version       = NethackUtils::VERSION
  gem.add_dependency 'gettext'
  gem.add_development_dependency 'rake'
end
