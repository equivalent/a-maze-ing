require 'rails_helper'

RSpec.describe HorizontalWallDecorator, type: :view do
  let(:maze_rep_object) { MazeMagic::HorizontalWall.instance }
  subject { described_class.new(maze_rep_object) }

  describe '#to_html' do
    it_behaves_like 'maze_magic to_html div'
    it do
      expect(subject.to_html).to have_selector "div.horizontal-wall"
    end
  end
end
