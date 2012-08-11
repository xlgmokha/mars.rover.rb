require "spec_helper"

describe NavigateRover do
  let(:sut) { NavigateRover.new }

  describe "when navigating" do
    it "should reply with the proper final coordinates" do
      sut.run('5 5', '1 2 N', 'LMLMLMLMM').should == '1 3 N'
    end
  end
end
