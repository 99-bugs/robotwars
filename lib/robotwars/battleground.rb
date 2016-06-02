
module Robotwars
    class Battleground

        def initialize
            @map = Map.new
            @sandbags = Array.new

            @maze = Maze.new
            @maze.walls.each do |wall|
                start = wall.first
                angle = Math::atan2(wall.last.y.to_f - wall.first.y, wall.last.x.to_f - wall.first.x)
                length = 128 * Math::sqrt((wall.first.x.to_f - wall.last.x.to_f) ** 2 + (wall.first.y.to_f - wall.last.y.to_f) ** 2)
                (length / 48).ceil.to_i.times do |i|
                    dx = start.x + (48 * i * Math::cos(angle))
                    dy = start.y + (48 * i * Math::sin(angle))
                    #puts dx, dy
                    @sandbags << Sandbag.new(16 + start.x * 128 + dx, 16 + start.y * 128 + dy , angle / Math::PI * 180)
                end
            end
        end

        def update

        end

        def draw
            @map.draw
            @sandbags.each do |sandbag|
                sandbag.draw
            end
        end
    end
end
