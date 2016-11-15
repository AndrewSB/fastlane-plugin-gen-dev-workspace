module Fastlane
  module Actions
    class GenDevWorkspaceAction < Action
      def self.run(params)
        UI.message("The gen_dev_workspace plugin is working!")
      end

      def self.description
        "Configures an xcworkspace with specified xcodeprojs"
      end

      def self.authors
        ["Andrew Breckenridge"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "By passing in an array of xcodeproj paths and an xcworkspace, gen_dev_workspace will return a a workspace with the xcodeprojs embedded within it"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "GEN_DEV_WORKSPACE_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
