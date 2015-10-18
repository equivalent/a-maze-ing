module MazeMagicDecorater
  def decorate
    "#{self.class.name.split('::').last}Decorator".constantize.new(self)
  end
end

[
  MazeMagic::Maze::Edge,
  MazeMagic::Maze::Passage,
  MazeMagic::Maze::HorizontalWall,
  MazeMagic::Maze::VerticalWall
]
  .each do |presentation_klass|
    presentation_klass.include MazeMagicDecorater
  end
