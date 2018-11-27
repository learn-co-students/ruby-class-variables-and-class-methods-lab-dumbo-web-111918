require "pry"
require_relative "lib/song.rb"

single_ladies = Song.new("single ladies", "beyonce", "pop")
yeah = Song.new("yeah", "usher", "pop")
hello = Song.new("hello", "amc", "rap")

binding.pry
