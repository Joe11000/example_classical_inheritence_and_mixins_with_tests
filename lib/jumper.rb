module Jumper
  attr_reader :jump_height

  def initialize args
    @jump_height = args[:jump_height]
  end

  def jump
    "#{self.class} jumped #{jump_height} feet"
  end
end
