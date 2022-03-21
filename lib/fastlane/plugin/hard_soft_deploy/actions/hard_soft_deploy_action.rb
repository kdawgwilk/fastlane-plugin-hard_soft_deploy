require 'fastlane/action'
require_relative '../helper/hard_soft_deploy_helper'

module Fastlane
  module Actions
    class HardSoftDeployAction < Action
      def self.run(params)
        UI.message("The hard_soft_deploy plugin is working!")
      end

      def self.description
        "Plugin to determine whether a react-native release needs to be a hard or soft release based on changes in git"
      end

      def self.authors
        ["Kaden Wilkinson"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Plugin to determine whether a react-native release needs to be a hard or soft release based on changes in git"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "HARD_SOFT_DEPLOY_OPTION",
          #                      description: "A description of your option",
          #                         optional: true,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
