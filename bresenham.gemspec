# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bresenham/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sean McCarthy"]
  gem.email         = ["sean@clanmccarthy.net"]
  gem.description   = %q{Implementation of Bresenham's algorithm for lines and circles. Functions return sets of coordinates that can be used for plotting.}
  gem.summary       = %q{Implementation of Bresenham's algorithm for lines and circles.}
  gem.homepage      = "https://github.com/seandmccarthy/bresenham"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bresenham"
  gem.require_paths = ["lib"]
  gem.version       = Bresenham::VERSION
end
