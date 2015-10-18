require 'rails_helper'

RSpec.describe VerticalWallDecorator, type: :view do
  let(:maze_rep_object) { MazeMagic::Maze::VerticalWall.instance }
  subject { described_class.new(maze_rep_object) }

  it_behaves_like 'decoratable representation object'

  describe '#to_html' do
    it_behaves_like 'maze_magic to_html div'
    it do
      expect(subject.to_html).to have_selector "div.vertical-wall"
    end
  end
end
