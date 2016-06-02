
class Explosion

    def initialize location
        @location = location
        @time = 0
        @images = Array.new
        @images << Gosu::Image.new("assets/images/Smoke/smokeGrey3.png")
        @images << Gosu::Image.new("assets/images/Smoke/smokeGrey2.png")
        @images << Gosu::Image.new("assets/images/Smoke/smokeGrey1.png")
    end

    def update
        @time += 1
    end

    def draw
        frame = (@time / 10).to_i
        if frame < @images.size
            x = @location.x - @images[frame].width / 2
            y = @location.y - @images[frame].height / 2
            @images[frame].draw x.to_i, y.to_i, 20
        end
    end
end
