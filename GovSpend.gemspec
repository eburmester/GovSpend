
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "GovSpend/version"

Gem::Specification.new do |spec|
  spec.name          = "GovSpend"
  spec.version       = GovSpend::VERSION
  spec.authors       = ["'Elyse Burmester'"]
  spec.email         = ["'burmesterelyse@gmail.com'"]

  spec.summary       = %q{government contract spending}
  spec.description   = %q{aijf;iosejmc}
  spec.homepage      = "https://github.com/eburmester/GovSpend"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = ["govspend"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_dependency "httparty"
end
