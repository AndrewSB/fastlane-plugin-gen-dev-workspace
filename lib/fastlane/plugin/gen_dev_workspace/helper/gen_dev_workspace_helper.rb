module Fastlane
  module Helper
    class GenDevWorkspaceHelper
      # class methods that you define here become available in your action
      # as `Helper::GenDevWorkspaceHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the gen_dev_workspace plugin helper!")
      end
    end
  end
end
