require_relative 'lib/mixin_ruby_client/version'

Gem::Specification.new do |spec|
  spec.name          = "mixin_ruby_client"
  spec.version       = MixinRubyClient::VERSION
  spec.authors       = ["Ruijian Cao"]
  spec.email         = ["cao7113@hotmail.com"]

  spec.summary       = %q{Mixin network ruby client}
  spec.description   = %q{Mixin network ruby client}
  spec.homepage      = "https://shareup.me"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cao7113/mixin_ruby_client"
  spec.metadata["changelog_uri"] = spec.metadata["source_code_uri"]

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
