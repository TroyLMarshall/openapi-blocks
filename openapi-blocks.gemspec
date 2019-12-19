# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "openapi/blocks/version"

Gem::Specification.new do |spec|
  spec.name          = "openapi-blocks"
  spec.version       = Openapi::Blocks::VERSION
  spec.authors       = ["Troy L. Marshall"]
  spec.email         = ["tmarsha1@nd.edu"]

  # spec.summary       = %q{Define and serve live-updating OpenAPI JSON for Ruby applications.}
  # spec.description   = %q{Implements the OpenAPI Specification defined at https://swagger.io/specification/}
  spec.summary       = "Define and serve live-updating OpenAPI JSON for Ruby applications."
  spec.description   = "Implements the OpenAPI Specification defined at https://swagger.io/specification/"
  spec.homepage      = "https://github.com/TroyLMarshall/openapi-blocks"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "i18n", "~> 1.7"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "cucumber", "~> 3.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.9"
  spec.add_development_dependency "rubocop", "~> 0.77"
  spec.add_development_dependency "simplecov", "~> 0.17"
  spec.add_development_dependency "yard", "~> 0.9"
end
