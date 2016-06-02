require 'geometry'

class Sandbag

    include Geometry

    def initialize x = 0, y = 0, angle = 0
        @image = Gosu::Image.new "assets/images/Obstacles/sandbagBrown.png"
        @position = Point[x,y]
        @heading = angle
    end

    def draw
        @image.draw_rot @position.x, @position.y, 0, @heading, 0.5, 0.5, (32 / @image.height).to_f , (32 / @image.width).to_f
    end

end
