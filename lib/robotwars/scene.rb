require "geometry"

module Robotwars
	class Scene
		include Robotwars
		def initialize
			Robotwars::log.debug "create new GameScreen"
			@map = Map.new
			@robot = Robot.new
			@robot.update_position Geometry::Point[100,100], 45
			@sandbags = Array.new

			@maze = Maze.new
			@maze.walls.each do |wall|
				start = wall.first
				angle = Math::atan2(wall.last.y.to_f - wall.first.y, wall.last.x.to_f - wall.first.x)
				length = 128 * Math::sqrt((wall.first.x.to_f - wall.last.x.to_f) ** 2 + (wall.first.y.to_f - wall.last.y.to_f) ** 2)
				(length / 48).ceil.to_i.times do |i|
					dx = start.x + (48 * i * Math::cos(angle)) + (wall.horizontal? ? 16 : 16)
					dy = start.y + (48 * i * Math::sin(angle)) + (wall.vertical? ? 16 : 16)
					#puts dx, dy
					@sandbags << Sandbag.new( start.x * 128 + dx, start.y * 128 + dy , angle / Math::PI * 180)
				end
			end
		end

		def update
			@map.update
		end

		def draw
			@map.draw
			@robot.draw
			@sandbags.each do |sandbag|
				sandbag.draw
			end
		end
	end
end
