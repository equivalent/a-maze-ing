class Maze
  attr_accessor :height, :width

  def grid
    @grid ||= MazeMagic::Generate
      .new(height: height, width: width)
      .tap { |g| g.generate_maze }
      .maze
  end
end
