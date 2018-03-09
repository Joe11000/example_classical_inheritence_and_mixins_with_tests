# require 'active_support/concern'

class Animal
  # extend ActiveSupport::Concern

  attr_reader :name

  def initialize args
    @name = args[:name]
  end
end
