require "gosu"

module Robotwars
	class Map

		def initialize
			@background = Gosu::Image.new("assets/images/Environment/grass.png", tileable: true)
			@height = 900
			@width = 1600
			@zindex = -100
		end

		def update

		end

		def draw
			(@width.to_f / @background.width).ceil.times do |row|
				(@height.to_f / @background.height).ceil.times do |column|
					x = row * 128
					y = column * 128
					@background.draw(x, y, @zindex)
				end
			end
		end

	end
end
