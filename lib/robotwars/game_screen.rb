require "robotwars/map"


module Robotwars
	class GameScreen

		def initialize
			Robotwars::log.debug "create new GameScreen"
			@map = Map.new
		end

		def update
			@map.update
		end

		def draw
			@map.draw
		end
	end
end

