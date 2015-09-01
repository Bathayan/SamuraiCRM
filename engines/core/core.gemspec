$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_core"
  s.version     = Samurai::Core::VERSION
  s.authors     = ["wellsonjain"]
  s.email       = ["wellsonjain@gmail.com"]
  s.homepage    = "http://samurails.com"
  s.summary     = "Core feature of SamuraiCRM"
  s.description = "Core feature of SamuraiCRM"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir[""]
  s.add_dependency "rails", "~> 4.2.3"
  s.add_development_dependency "sqlite3"
end
