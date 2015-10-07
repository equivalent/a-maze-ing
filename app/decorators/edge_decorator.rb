class EdgeDecorator < SimpleDelegator
  include ActionView::Helpers::TextHelper

  def to_html
    content_tag :div, '', class: %w(maze-magic edge)
  end
end
