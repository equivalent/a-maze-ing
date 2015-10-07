class MazesController < ApplicationController
  def index
    @maze ||= Maze
      .new
      .tap { |m| m.height = height.to_i }
      .tap { |m| m.width  = width.to_i }
      .grid
  end

  private

  def height
    params[:height] || 30
  end

  def width
    params[:width] || 50
  end
end
