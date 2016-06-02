require "geometry"

class Rocket < Shot

  def initialize owner, range = 1000.0, power = 25.0
      super owner, range, power
      @image = Gosu::Image.new "assets/images/Bullets/bulletBlue.png"
      owner.world.rockets << Explosion.new(@position)
  end

  def update
      x = @position.x + @speed * Math::cos(@heading)
      y = @position.y + @speed * Math::sin(@heading)
      @position = Point[x,y]
  end

  def draw
      heading = (@heading / Math::PI * 180) + 90
      @image.draw_rot @position.x, @position.y, 1, heading, 0.5, 0.5, 0.7, 0.7
  end

  def check_collisions

      @damage = robot.hit! self unless robot.nil?
  end

  def hit? robot
      distance = GeometryHelper::minimumDistanceLineToPoint(@traject, robot.position)
      distance - robot.size < 0
  end

end
