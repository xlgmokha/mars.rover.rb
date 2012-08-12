require "spec_helper"

describe CommandProcessor do
  let(:sut) {CommandProcessor.new }

  context "when run" do
    let(:first_command) { fake }
    let(:second_command) { fake }
    it "should run each command added to the queue" do
      first_command.should have_received(:run)
      second_command.should have_received(:run)
    end
    before(:each) do
      sut.add(first_command)
      sut.add(second_command)
      sut.run
    end
    describe "when run again" do
      it "should have nothing to run" do
        first_command.should have_received(:run).once
        first_command.should have_received(:run).once
        second_command.should have_received(:run).once
      end
      before(:each) do
        sut.run
      end
    end
  end
end
