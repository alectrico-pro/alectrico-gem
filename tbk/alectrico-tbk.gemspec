require_relative "lib/alectrico/version"

Gem::Specification.new do |spec|
 #spec.cert_chain  = ['certs/alectrico.pem']
 #spec.signing_key = File.expand_path("certs/gem-private_key.pem") if $0 =~ /gem\z/

  spec.name        = "alectrico-tbk"
  spec.version     = Alectrico::Tbk::VERSION
  spec.authors     = [ "alectrico®" ]
  spec.email       = [ "alectrico@outlook.cl" ]
  spec.homepage    = "https://www.alectrico.cl"
  spec.summary     = "No usar, es una prueba Alectrico::Tbk."
  spec.description = "No usar, es una prueba Alectrico::Tbk."
  spec.license     = nil
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://www.rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/alectrico-pro/alectrico-tbk"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.2"
  #spec.add_runtime_dependency "rails", "~> 5.0", ">= 5.0.0"
end

