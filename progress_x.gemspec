$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "progress_x/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name              = 'progress_x'
  s.version           = ProgressX::VERSION
  s.authors           = ['Johannes Kaefer']
  s.email             = ['johannes.kaefer@chads.io']
  s.homepage          = 'https://www.chads.io'
  s.summary           = 'Rails Engine which bundles and encapsulates some progress library in JS'
  s.description       = 'Provide a consistent java interface to some popular JS-progress libraries. Also it comes with a status module that performs some utility functions for tracking progress in an action'

  s.add_dependency    'railties'
  s.add_dependency    'thor'
  s.add_dependency    'activesupport'
  s.add_dependency    'coffee-script'

  #s.files             = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files             = `git ls-files`.split("\n")
  s.require_path      = 'lib'
  s.test_files        = Dir["test/**/*"]
end
