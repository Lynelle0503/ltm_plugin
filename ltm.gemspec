require_relative "lib/ltm/version"

Gem::Specification.new do |spec|
  spec.name        = "ltm"
  spec.version     = Ltm::VERSION
  spec.authors     = [ "Lynelle0503" ]
  spec.email       = [ "37027090+Lynelle0503@users.noreply.github.com" ]
  spec.homepage    = "https://github.com/Lynelle0503/ltm_plugin"
  spec.summary     = "Summary of Ltm."
  spec.description = "just do it"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Lynelle0503/ltm_plugin"
  spec.metadata["changelog_uri"] = "https://github.com/Lynelle0503/ltm_plugin."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.1"
  spec.add_dependency 'bcrypt', '~> 3.1.16'
end
