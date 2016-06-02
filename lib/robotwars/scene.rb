require "geometry"

module Robotwars
	class Scene
		include Robotwars
		def initialize
			Robotwars::log.debug "create new GameScreen"
			@robots = Array.new
			@battleground = Battleground.new
			@ranking = Ranking.new @robots
		end

		def update
			@battleground.update
			@ranking.update
		end

		def draw
			Gosu::translate 16,0 do
				Gosu::clip_to(0,0,1536 + 32,768 + 32) do
					@battleground.draw
				end
			end
			Gosu::translate 0,800 do
				Gosu::clip_to(0,0,1600,100) do
					@ranking.draw
				end
			end
		end
	end
end
