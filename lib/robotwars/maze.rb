require "geometry"

class Maze
    include Geometry

    attr_reader :walls

    def initialize
        @walls = Array.new
        # outer walls
        @walls.push(
            Line[[0,0],[12,0]],
            Line[[12,0],[12,6]],
            Line[[12,6],[0,6]],
            Line[[0,6],[0,0]],

            Line[[0,1],[2,1]],
            Line[[2,1],[2,2]],
            Line[[2,2],[4,2]],
            Line[[4,2],[4,1]],
            Line[[4,1],[3,1]],

            Line[[0,4],[1,4]],
            Line[[1,4],[1,2]],

            Line[[1,6],[1,5]],
            Line[[1,5],[3,5]],

            Line[[4,6],[4,3]],
            Line[[5,1],[5,3]],
            Line[[5,3],[3,3]],
            Line[[3,3],[3,4]],
            Line[[3,4],[2,4]],
            Line[[2,4],[2,3]],

            Line[[5,6],[5,5]],
            Line[[5,5],[7,5]],

            Line[[8,6],[8,4]],
            Line[[8,4],[7,4]],

            Line[[10,6],[10,4]],

            Line[[10,2],[12,2]],

            Line[[11,0],[11,1]],
            Line[[11,1],[10,1]],

            Line[[6,0],[6,2]],
            Line[[6,2],[8,2]],
            Line[[8,2],[8,1]],
            Line[[8,1],[7,1]],

            Line[[9,0],[9,5]],
            Line[[11,5],[11,3]],
            Line[[11,3],[6,3]],
            Line[[6,3],[6,4]],
            Line[[6,4],[5,4]]
        )
    end
end
