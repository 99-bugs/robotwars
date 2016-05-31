require "geometry"

module Robotwars
	class Scene
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
