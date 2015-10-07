class VerticalWallDecorator < SimpleDelegator
  include ActionView::Helpers::TextHelper

  def to_html
    content_tag :div, '', class: %w(maze-magic vertical-wall)
  end
end
