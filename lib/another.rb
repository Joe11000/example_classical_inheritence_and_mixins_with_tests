# #!/usr/bin/env ruby
# require 'pry'

# module Dog
#   @times_walked = 0
#   $commands = 0
#   POOP='I did. Twice.'

#   def self.walk
#     @times_walked += 1
#     $commands += 1
#   end
#   def self.walked?
#     @times_walked > 0
#   end

#   def self.commands_given
#     $commands
#   end

#   # def included

#   # end
# end

# class PitBull
#   extend Dog

#   def initialize

#   end

#   def pooped?
#     binding.pry
#     puts super::POOP
#     !!POOP
#   end
#   def commands_given2
#     $commands
#   end

#   def self.walked2?
#     @times_walked > 0
#   end
# end


# # puts Dog::commands_given
# # puts Dog::walked?
# # puts Dog::walk
# binding.pry
# puts PitBull.commands_given
# puts PitBull.walked?
# puts PitBull.walk

# pb = PitBull.new
# puts pb.commands_given2
# puts pb.walked2?
# puts pb.walk
