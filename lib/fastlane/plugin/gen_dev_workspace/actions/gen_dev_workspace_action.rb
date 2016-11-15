module Fastlane
  module Actions
    class GenDevWorkspaceAction < Action
      def self.run(params)
        xcworkspace = Xcodeproj::Workspace.new_from_xcworkspace(params[:xcworkspace])
        xcodeprojs = params[:xcodeprojs]

        case xcodeprojs
        when Array
          # empty the workspace here
          xcodeprojs.each { |proj|
            #
            xcworkspace <<(proj)
          }
        else
          raise "you didn't pass in an array of xcodeprojs"

        workspace.save_as
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
          FastlaneCore::ConfigItem.new(key: :xcworkspace,
                                  env_name: "GEN_DEV_WORKSPACE_XCWORKSPACE",
                               description: "The path to the development workspace",
                                  optional: false,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :xcodeprojs,
                                  env_name: "GEN_DEV_WORKSPACE_XCODEPROJS",
                               description: "An array of xcodeprojs you want embedded into the workspace",
                                  optional: true,
                                      type: Array),
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
