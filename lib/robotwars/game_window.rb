require 'gosu'
require "robotwars/logger"
require "robotwars/game_screen"

module Robotwars
	class GameWindow < Gosu::Window
		def initialize
			super 1600, 900
			self.caption = "Robotwars"
			Robotwars::log.debug "GameWindow created"

			@screen = GameScreen.new
		end

		def update
			@screen.update
		end

		def draw
			@screen.draw
		end
	end
end
