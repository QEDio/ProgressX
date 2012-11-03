$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "progress_x/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name              = "progress_x"
  s.version           = ProgressX::VERSION
  s.authors           = ["TODO: Your name"]
  s.email             = ["TODO: Your email"]
  s.homepage          = "TODO"
  s.summary           = "TODO: Summary of ProgressX."
  s.description       = "TODO: Description of ProgressX."

  s.add_dependency "railties"
  s.add_dependency "thor"
  s.add_dependency 'activesupport'

  #s.files             = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files             = `git ls-files`.split("\n")
  s.require_path      = 'lib'
  s.test_files        = Dir["test/**/*"]
end
