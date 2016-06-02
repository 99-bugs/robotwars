require "geometry"

module Robotwars
	class Scene
		include Robotwars
		def initialize
			Robotwars::log.debug "create new GameScreen"
			@battleground = Battleground.new
			@ranking = Ranking.new
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
			Gosu::clip_to(0,0,1600,100) do
				Gosu::translate 16,16 do
					@ranking.draw
				end
			end
		end
	end
end
