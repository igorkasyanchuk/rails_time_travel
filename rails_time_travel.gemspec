require_relative "lib/rails_time_travel/version"

Gem::Specification.new do |spec|
  spec.name        = "rails_time_travel"
  spec.version     = RailsTimeTravel::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/rails_time_travel"
  spec.summary     = "Time Travel with timecop for your Rails app"
  spec.description = "Time Travel with timecop for your Rails app"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.1"
  spec.add_dependency "timecop"
  spec.add_development_dependency "pry"
end
