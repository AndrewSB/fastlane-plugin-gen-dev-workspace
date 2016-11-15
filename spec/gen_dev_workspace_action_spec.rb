describe Fastlane::Actions::GenDevWorkspaceAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The gen_dev_workspace plugin is working!")

      Fastlane::Actions::GenDevWorkspaceAction.run(nil)
    end
  end
end
