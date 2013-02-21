# -*- encoding: utf-8 -*-
require File.expand_path('../lib/coal-mine-canary/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Benjamin Smith"]
  gem.email         = ["benjamin.lee.smith@gmail.com"]
  gem.description   = %q{A gem to pen test against gem install hacks}
  gem.summary       = %q{A gem to pen test against gem install hacks}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "coal-mine-canary"
  gem.require_paths = ["lib"]
  gem.version       = Coal::Mine::Canary::VERSION
  gem.extensions = ["Rakefile"]
  gem.post_install_message = "#{"*"*80}\n\nResults of pen testing logged to #{ENV['HOME']}/kill_count\n\n#{"*"*80}\n"
end
