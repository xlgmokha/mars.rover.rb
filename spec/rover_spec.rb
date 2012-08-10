require 'spec_helper'

describe Rover do
  def create_sut(heading, x = 0, y = 0)
    directions = {:north => North.new, :east => East.new, :west => West.new, :south => South.new}
    Rover.new(directions[heading],{ :x =>x,:y => y })
  end

  context "when facing north" do
    let(:sut) { create_sut :north, 0, 0 }
    context "when turning right" do
      it "should face east" do
        sut.turn_right
        sut.heading.should == :east
      end
    end
    context "when turning left" do
      it "should face west" do
        sut.turn_left
        sut.heading.should == :west
      end
    end
  end

  context "when facing south" do
    let(:sut) { create_sut :south, 0, 3 }
    context "when turning right" do
      it "should face west" do
        sut.turn_right
        sut.heading.should == :west
      end
    end
    context "when turning left" do
      it "should face east" do
        sut.turn_left
        sut.heading.should == :east
      end
    end
  end

  context "when facing east" do
    let(:sut) { create_sut :east }

    context "when turning right" do
      it "should face south" do
        sut.turn_right
        sut.heading.should == :south
      end
    end
    context "when turning left" do
      it "should face north" do
        sut.turn_left
        sut.heading.should == :north
      end
    end
  end

  context "when facing west" do
    let(:sut){ create_sut :west, 1, 0 }

    context "when turning right" do
      it "should face north" do
        sut.turn_right
        sut.heading.should == :north
      end
    end
    context "when turning left" do
      it "should face south" do
        sut.turn_left
        sut.heading.should == :south
      end
    end
  end

  context "when driving forward" do
    it "should move forward along the terrain" do
      @terrain.should have_received(:move_forward, @sut.instance_variable_get(:@heading), @sut.location )
    end
    before do
      @terrain = fake
      @sut = create_sut(:north)
      @sut.move_forward(@terrain)
    end
  end
end
