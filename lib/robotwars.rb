require "robotwars/version"
require "robotwars/logger"
require "robotwars/game_window"
require "robotwars/input_manager"
require "robotwars/scene"
require "robotwars/map"
require "robotwars/robot"
require "robotwars/sandbag"
require "robotwars/maze"

module Robotwars
	class Game
		class << self
			attr_accessor :game_window
			attr_accessor :input_manager
			attr_accessor :scene
		end

		def self.setup game_window: GameWindow.new,
									 input_manager: InputManager.new,
									 scene:         Scene.new
			Robotwars::log.info "Setup new game"
			@game_window   = game_window
			@input_manager = input_manager
			@scene         = scene
			@input_manager.target = game_window
		end

		def self.start
			Robotwars::log.info "Start game"
			game_window.show
		end
	end
end
