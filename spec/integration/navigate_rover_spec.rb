require "navigate_rover"

describe NavigateRover do
  let(:sut) { NavigateRover.new(plateau, starting_position, instructions ) }

  describe "when navigating" do
    context "plateau of 5 by 5" do
      let(:plateau) { '5 5' }

      context "starting at 1 2 N" do
        let(:starting_position) { '1 2 N' }
        let(:instructions) {'LMLMLMLMM' }

        it "should reply with the proper final coordinates" do
          sut.run.should == '1 3 N'
        end
      end
      #context "starting at 3 3 E" do
        #let(:starting_position) { '3 3 E' }

        #it "should reply with the proper final coordinates" do
          #sut.run(plateau, starting_position, 'MMRMMRMRRM').should == '5 1 E'
        #end
      #end
    end
  end
end
