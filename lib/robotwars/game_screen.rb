require "robotwars/map"
require "robotwars/robot"
require "geometry"

module Robotwars
	class GameScreen
		include Robotwars
		def initialize
			Robotwars::log.debug "create new GameScreen"
			@map = Map.new
			@robot = Robot.new
			@robot.update_position Geometry::Point[100,100], 45
		end

		def update
			@map.update
		end

		def draw
			@map.draw
			@robot.draw
		end
	end
end

