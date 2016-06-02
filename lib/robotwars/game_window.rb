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

		def button_down id
			Game.input_manager.button_down id
		end

		def receive_input input
	      close if input == Gosu::KbEscape
	      Game.scene.receive_input input
	    end
	end
end
