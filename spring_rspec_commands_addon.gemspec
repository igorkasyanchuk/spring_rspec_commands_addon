# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spring_rspec_commands_addon/version'

Gem::Specification.new do |spec|
  spec.name          = "spring_rspec_commands_addon"
  spec.version       = SpringRspecCommandsAddon::VERSION
  spec.authors       = ["Igor Kasyanchuk"]
  spec.email         = ["igorkasyanchuk@gmail.com"]

  spec.summary       = %q{Integrate rspec+spring+rspec nicely. If your specs fails, copy-paste them and run again with spring.}
  spec.description   = %q{Instead of <rspec ./specs/models/user_spec.rb> receive in console <bin/rspec ./specs/models/user_spec.rb>}
  spec.homepage      = "https://github.com/igorkasyanchuk"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
