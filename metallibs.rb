#!/usr/bin/env ruby

require_relative 'bootstrap_ar'
require_relative 'app/models/metal_lib'
require_relative 'app/controllers/metallibs_controller'
require_relative 'lib/holy_diver'
require_relative 'lib/run_to_the_hills'
require_relative 'lib/the_trees'
database = ENV['ML_ENV'] || 'development'
connect_to database

def clear_table
    MetalLib.destroy_all
end


clear_table

controller = MetalLibsController.new
user_selection = @user_selection

controller.clear_table
controller.song_select
controller.song_run(user_selection)
