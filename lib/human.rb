require_relative 'jumper'
require_relative 'animal'
require 'pry'

class Human < Animal
  alias_method :super_class_initialize, :initialize

  include Jumper
  alias_method :jumper_module_initialize, :initialize

  # include PetOwnerRole


  def initialize args=({jump_height: 1 })
    jumper_module_initialize ( args.slice(:jump_height) )
    super_class_initialize args.slice(:name)

    # @pet = args[:pet]
    # extra_initializers args
  end



  # def extra_initializers args; end

end


# alias_method :super_class_initialize, :initialize

# include Jumper

# def initialize args
#   super_class_initialize args
#   super args.splice()
# end
