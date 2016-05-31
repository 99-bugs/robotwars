require 'gosu'

module Robotwars
	class GameWindow < Gosu::Window
		def initialize width = 1600, height = 900
			super width, height
			self.caption = "Robotwars"
		end

		def update
			Game.scene.update
		end

		def draw
			Game.scene.draw
		end
	end
end
