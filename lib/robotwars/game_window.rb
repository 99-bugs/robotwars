require 'gosu'
require "robotwars"

class GameWindow < Gosu::Window
	def initialize
		super 1600, 900
		self.caption = "Robotwars"
		Robotwars::log.debug "GameWindow created"
	end

	def update
	end

	def draw
	end
end

