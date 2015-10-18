require 'rails_helper'

RSpec.describe Maze do
  subject do
    described_class.new
      .tap { |m| m.height = 1 }
      .tap { |m| m.width = 1 }
  end

  describe '#grid' do
    it "generates the maze grid" do
      expect(subject.grid).to match_array([
       [
         MazeMagic::Maze::Edge.instance,
         MazeMagic::Maze::HorizontalWall.instance,
         MazeMagic::Maze::Edge.instance
       ],
       [
         MazeMagic::Maze::VerticalWall.instance,
         MazeMagic::Maze::HorizontalWall.instance,
         MazeMagic::Maze::VerticalWall.instance
       ]
      ])
    end
  end
end
