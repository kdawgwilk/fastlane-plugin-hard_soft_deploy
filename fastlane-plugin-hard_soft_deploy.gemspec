lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/hard_soft_deploy/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-hard_soft_deploy'
  spec.version       = Fastlane::HardSoftDeploy::VERSION
  spec.author        = 'Kaden Wilkinson'
  spec.email         = '7799267+kdawgwilk@users.noreply.github.com'

  spec.summary       = 'Plugin to determine whether a react-native release needs to be a hard or soft release based on changes in git'
  spec.homepage      = "https://github.com/kdawgwilk/fastlane-plugin-hard_soft_deploy"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.5'

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency('git')

  spec.add_development_dependency('bundler')
  spec.add_development_dependency('fastlane', '>= 2.205.0')
  spec.add_development_dependency('pry')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rubocop', '1.12.1')
  spec.add_development_dependency('rubocop-performance')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
end
