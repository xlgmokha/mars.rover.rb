require 'spec_helper'

describe Rover do
  def create_sut(heading, x = 0, y = 0)
    directions = {:north => North.new, :east => East.new, :west => West.new, :south => South.new}
    Rover.new(directions[heading], x, y , plateau)
  end
  let(:plateau) { fake }

  context "when facing north" do
    let(:sut) { create_sut :north, 0, 0 }
    context "when turning right" do
      it "should face east" do
        sut.rotate(90)
        sut.heading.should == :east
      end
    end
    context "when turning left" do
      it "should face west" do
        sut.rotate(-90)
        sut.heading.should == :west
      end
    end
  end

  context "when facing south" do
    let(:sut) { create_sut :south, 0, 3 }
    context "when turning right" do
      it "should face west" do
        sut.rotate(90)
        sut.heading.should == :west
      end
    end
    context "when turning left" do
      it "should face east" do
        sut.rotate(-90)
        sut.heading.should == :east
      end
    end
  end

  context "when facing east" do
    let(:sut) { create_sut :east }

    context "when turning right" do
      it "should face south" do
        sut.rotate(90)
        sut.heading.should == :south
      end
    end
    context "when turning left" do
      it "should face north" do
        sut.rotate(-90)
        sut.heading.should == :north
      end
    end
  end

  context "when facing west" do
    let(:sut){ create_sut :west, 1, 0 }

    context "when turning right" do
      it "should face north" do
        sut.rotate(90)
        sut.heading.should == :north
      end
    end
    context "when turning left" do
      it "should face south" do
        sut.rotate(-90)
        sut.heading.should == :south
      end
    end
  end

  context "when driving forward" do
    it "should move forward along the terrain" do
      plateau.should have_received(:move_forward, @sut.instance_variable_get(:@heading), @sut.location )
    end
    before do
      @sut = create_sut(:north)
      @sut.forward
    end
  end

  context "when printed" do
    it "should return the heading and location" do
      create_sut(:north).to_s.should == '0 0 N'
    end
  end
end
