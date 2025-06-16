require_relative "lib/yaffle/version"

Gem::Specification.new do |spec|
  spec.name        = "yaffle"
  spec.version     = Yaffle::VERSION
  spec.authors     = [ "" ]
  spec.email       = [ "" ]
  spec.homepage    = "http://www.alectrico.cl"
  spec.summary     = "Summary of Yaffle."
  spec.description = "Description of Yaffle."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "http://www.rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/alectrico-pro/yaffle"
  #spec.metadata["changelog_uri"] = " your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.2"
end
