require 'pry'

module PetRole

  module ClassMethods
    def self.pet_count
      @counter ||= 0
    end

    private
      def self.increment_count
        @counter ||= 0
        @counter += 1
      end
  end

  module InstanceMethods
    def initialize new_args
      args = default_args.merge new_args
      ClassMethods.send(:increment_count)

      @likes_to_be_touched = args[:likes_to_be_touched]
      @owner = args[:owner]
    end

    def owner
      @owner.nil? ? "#{name} doesn't have an owner" : "#{name} owner is #{@owner}"
    end

    # untested
    # def owner= pet_owner_role

    # end

    def likes_to_be_touched?
      @likes_to_be_touched
    end

    private
      def default_args
        {
          likes_to_be_touched: [true, false].sample,
          owner: nil
        }
      end
  rescue e => LOADERROR
    # def name; raise 'Not Overwritten'; end
    binding.pry
    raise "PetRole requires a method 'name' to be overwritten"
  end
end
