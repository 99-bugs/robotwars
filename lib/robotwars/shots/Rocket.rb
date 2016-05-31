require "./lib/Shots/Shot"
require "./lib/GeometryHelper"
require "geometry"

class Rocket < Shot

  def initialize owner, range = 1000.0, power = 25.0
      super owner, range, power
      @traject = Line[@position, endPosition]

      checkCollisions if @world
  end

  def checkCollisions
      limitShotUntilWall
      robot = getRobotCollision

      @damage = robot.hit! self unless robot.nil?
  end

  def getRobotCollision
      robotsInRange = @world.robots.select do |id, robot|
          hit? robot unless robot == @owner
      end

      id, robot = robotsInRange.min_by do |id, robot|
          GeometryHelper::distance(robot.position, @position)
      end
      robot
  end

  def limitShotUntilWall
      wallsInRange = @world.maze.walls.select do |wall|
          GeometryHelper::getLineIntersection(@traject, wall)
      end

      wall = wallsInRange.min_by do |wall|
          intersection = GeometryHelper::getLineIntersection(@traject, wall)
          GeometryHelper::distance(intersection, @position)
      end

      unless wall.nil?
          intersection = GeometryHelper::getLineIntersection(@traject, wall)
          @traject = Line[@position, intersection]
      end
  end

  def endPosition
      x = @position.x + (@range * Math::cos(@heading))
      y = @position.y - (@range * Math::sin(@heading))
      Point[x,y]
  end

  def hit? robot
      distance = GeometryHelper::minimumDistanceLineToPoint(@traject, robot.position)
      distance - robot.size < 0
  end

end
