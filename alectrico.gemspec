require_relative "lib/alectrico/version"

Gem::Specification.new do |spec|
  spec.name        = "alectrico"
  spec.version     = Alectrico::VERSION
  spec.authors     = [ "alectrico®" ]
  spec.email       = [ "alectrico@outlook.cl" ]
  spec.homepage    = "http://www.alectrico.cl"
  spec.summary     = "Algunas clases de apoyo al sitio https://www.alectrico.cl."
  spec.description = "Basado en el tutorial en https://guides.rubyonrails.org/plugins.html. Usa docker compose."
  spec.license     = "MIT"
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://www.rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/alectrico-pro/alectrico-gem"
  #spec.metadata["changelog_uri"] = " your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 5.0.0"
  spec.add_dependency "jwt", '>= 2.2.1'
end
