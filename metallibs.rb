#!/usr/bin/env ruby

require_relative 'bootstrap_ar'
require_relative 'app/models/metal_lib'
require_relative 'app/controllers/metallibs_controller'
require_relative 'lib/holy_diver'
database = ENV['ML_ENV'] || 'development'
connect_to database

  def clear_table
        MetalLib.destroy_all
  end

clear_table
puts "generating Holy Diver"

holy_diver



# adjective_1 = MetalLib.first.user_input
# adjective_2 = MetalLib.find(19).first.user_input # is going find MetalLib with id = 19 and .first pulls that out of an array
# MetalLib.all.each do |metal_lib|
#     puts metal_lib.user_input
# end
# MetalLib.where(:user_input => "blah") # => returns an array [objects]
# x = MetalLib.all.pluck('user_input')
# x[0] # return the first of the array no matter what the id is
# "Sabbath bloody #{x[1]}" 

# puts "You've been down too long in the " + adjective_1 + " sea"