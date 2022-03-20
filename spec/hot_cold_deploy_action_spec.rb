describe Fastlane::Actions::HotColdDeployAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The hot_cold_deploy plugin is working!")

      Fastlane::Actions::HotColdDeployAction.run(nil)
    end
  end
end
