$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'simplecov'

SimpleCov.minimum_coverage(80)
SimpleCov.start

# This module is only used to check the environment is currently a testing env
module SpecHelper
end

require 'fastlane' # to import the Action super class
require 'fastlane/plugin/hard_soft_deploy' # import the actual plugin

Fastlane.load_actions # load other actions (in case your plugin calls other actions or shared values)
