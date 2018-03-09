#!/usr/bin/env ruby

require_relative 'pet_role'
require_relative 'jumper'
require_relative 'human'
require 'pry'
require 'active_support/core_ext/module/delegation'

class Dog < Animal
  attr_reader :owner

  alias_method :super_class_initialize, :initialize

  include Jumper
  alias_method :jumper_module_initialize, :initialize

  extend PetRole::ClassMethods
  include PetRole::InstanceMethods
  alias_method :pet_role_module_initialize, :initialize

  def initialize args # { args: {:owner, :likes_to_be_touched, :jump_height, :name } }
    pet_role_module_initialize( args.slice(:owner, :likes_to_be_touched) )
    jumper_module_initialize( args.slice(:jump_height) || { jump_height: rand(2.0..4.0) })
    super_class_initialize( args.slice(:name) )

    @owner = args[:human]
  end

  # delegate :name, to: -> { self.class.superclass.name }
  # def name
  #   self.class.superclass.name
  # end
end
