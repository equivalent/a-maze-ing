require 'rails_helper'

RSpec.describe PassageDecorator, type: :view do
  let(:maze_rep_object) { MazeMagic::Maze::Passage.instance }
  subject { described_class.new(maze_rep_object) }

  it_behaves_like 'decoratable representation object'

  describe '#to_html' do
    it_behaves_like 'maze_magic to_html div'
    it do
      expect(subject.to_html).to have_selector "div.passage"
    end
  end
end
