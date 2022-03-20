require 'fastlane/action'
require_relative '../helper/hot_cold_deploy_helper'

module Fastlane
  module Actions
    class HotColdDeployAction < Action
      def self.run(params)
        UI.message("The hot_cold_deploy plugin is working!")
      end

      def self.description
        "Plugin to determine whether a react-native release needs to be a hot or cold release based on changes in git"
      end

      def self.authors
        ["Kaden Wilkinson"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Plugin to determine whether a react-native release needs to be a hot or cold release based on changes in git"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "HOT_COLD_DEPLOY_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
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
