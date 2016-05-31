require 'gosu'
require "robotwars"

class GameWindow < Gosu::Window
	def initialize
		super 640, 480
		self.caption = "Gosu Tutorial Game"
		Robotwars::log.debug "GameWindow created"
	end

	def update
	end

	def draw
	end
end

