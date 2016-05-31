require "robotwars/version"
require "robotwars/game_window"
require "robotwars/logger"

module Robotwars
	class Game
		def initialize
				Robotwars::log.info "Starting new game"
				game = GameWindow.new
				game.show
		end
	end
end
