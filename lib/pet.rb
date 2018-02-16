require ''

class Pet < Animal
  alias_method :super_class_initialize, :initialize

  attr_reader :owner

  include Jumper

  def initialize args
    super_class_initialize args.slice(:name)
    super args.slice(:jump_height)

    @owner = args[:human]
  end
end
