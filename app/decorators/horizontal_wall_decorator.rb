class HorizontalWallDecorator < SimpleDelegator
  include ActionView::Helpers::TextHelper

  def to_html
    content_tag :div, '', class: %w(maze-magic horizontal-wall)
  end
end
