# module PetRole
#   module ClassMethods
#     def pet_count
#       @counter ||= 0
#     end

#     def increment_count
#       @counter ||= 0
#       @counter += 1
#     end
#   end

#   module InstanceMethods
#     def initialize args=({likes_to_be_touched: [true, false].sample, owner: nil})
#       ClassMethods.increment_count

#       @likes_to_be_touched = args[:likes_to_be_touched]
#       @owner = args[:owner]
#     end

#     def owner
#       @owner.nil? ? "#{name} doesn't have an owner" : "#{name} owner is #{@owner}"
#     end

#     def name; raise 'Not Overwritten'; end

#     def likes_to_be_touched?
#       @likes_to_be_touched
#     end
#   end
# end

# require 'active_support/concern'
require 'pry'

module PetRole
  # extend ActiveSupport::Concern

  module ClassMethods
    def self.pet_count
      @counter ||= 0
    end

    def self.increment_count
      @counter ||= 0
      @counter += 1
    end
  end

  module InstanceMethods
    def initialize args=({likes_to_be_touched: [true, false].sample, owner: nil})
      ClassMethods.increment_count

      @likes_to_be_touched = args[:likes_to_be_touched]
      @owner = args[:owner]
    end

    def owner
      @owner.nil? ? "#{name} doesn't have an owner" : "#{name} owner is #{@owner}"
    end


    def likes_to_be_touched?
      @likes_to_be_touched
    end

    # def name; raise 'Not Overwritten'; end
  rescue e => LOADERROR
    binding.pry
    raise "PetRole requires a method 'name' to be overwritten"
  end
end
