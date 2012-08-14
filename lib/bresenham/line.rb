module Bresenham
  module Line
    def self.coordinates(x0, y0, x1, y1)
      dx     = (x1 - x0).abs
      dy     = -(y1 - y0).abs
      step_x = x0 < x1 ? 1 : -1
      step_y = y0 < y1 ? 1 : -1 
      err    = dx + dy
  
      coords = Set.new [[x0, y0]]
      begin
        e2 = 2*err;
        if e2 >= dy
          err += dy
          x0 += step_x
        end
        if e2 <= dx
          err += dx
          y0 += step_y
        end
        coords << [x0, y0]
      end until (x0 == x1 && y0 == y1)
      coords
    end
  end
end
