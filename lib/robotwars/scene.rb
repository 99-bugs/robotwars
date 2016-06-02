require "geometry"

module Robotwars
	class Scene
		include Robotwars

		attr_accessor :rockets
		def initialize
			Robotwars::log.debug "create new GameScreen"
			@robots = create_robots
			@rockets = Array.new
			@battleground = Battleground.new
			@ranking = Ranking.new @robots
		end

		def update
			robot = @robots.first
			robot.forward if Game::game_window.button_down? 82
			robot.reverse if Game::game_window.button_down? 81
			robot.left if Game::game_window.button_down? 80
			robot.right if Game::game_window.button_down? 79
			@battleground.update
			@ranking.update
			@rockets.each do |rocket|
				rocket.update
			end
		end

		def draw
			Gosu::translate 16,0 do
				Gosu::clip_to(0,0,1536 + 32,768 + 32) do
					@battleground.draw
					@robots.each do |robot|
						robot.draw
					end
					@rockets.each do |rocket|
						rocket.draw
					end
				end
			end
			Gosu::translate 0,800 do
				Gosu::clip_to(0,0,1600,100) do
					@ranking.draw
				end
			end
		end

		def receive_input input
			robot = @robots.first
			robot.shoot if input == Gosu::KbSpace
		end

		def create_robots
			robots = Array.new
			robot = Robot.new "lkj", self
			robot.update_position Geometry::Point[100,100], 0
			robots << robot
			robot = Robot.new "lkj", self
			robot.update_position Geometry::Point[300,100], 0
			robots << robot
			robot = Robot.new "lkj", self
			robot.update_position Geometry::Point[500,500], 0
			robots << robot
			robots
		end
	end
end
