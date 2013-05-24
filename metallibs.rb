#!/usr/bin/env ruby

require_relative 'bootstrap_ar'
require_relative 'app/models/metal_lib'
require_relative 'app/controllers/metallibs_controller'
require_relative 'lib/holy_diver'
database = ENV['ML_ENV'] || 'development'
connect_to database


controller = MetalLibsController.new
user_selection = @user_selection

controller.clear_table
controller.song_select
controller.song_run(user_selection)