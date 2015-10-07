require 'rails_helper'

class HorizontalWallDecorator < SimpleDelegator
  include ActionView::Helpers::TextHelper

  def to_html
    content_tag :div, '', class: %w(maze-magic horizontal-wall)
  end
end

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
