module MazeMagicDecorater
  def decorate
    "#{self.class.name.split('::').last}Decorator".constantize.new(self)
  end
end

[MazeMagic::Edge, MazeMagic::Passage, MazeMagic::HorizontalWall, MazeMagic::VerticalWall].each do |presentation_klass|
  presentation_klass.include MazeMagicDecorater
end
