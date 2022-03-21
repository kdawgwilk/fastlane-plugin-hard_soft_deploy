describe Fastlane::Actions::HardSoftDeployAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The hard_soft_deploy plugin is working!")

      Fastlane::Actions::HardSoftDeployAction.run(nil)
    end
  end
end
