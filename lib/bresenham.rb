require "bresenham/version"

module Bresenham
  def self.line_coordinates(x0, y0, x1, y1)
    dx     = (x1 - x0).abs
    dy     = -(y1 - y0).abs
    step_x = x0 < x1 ? 1 : -1
    step_y = y0 < y1 ? 1 : -1 
    err    = dx + dy
 
    coords = [[x0, y0]]
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

  def self.circle_coordinates2(x0, y0, radius)
    d = 3 - 2 * radius
    x = 0;
    y = radius;
    coords = []
 
    begin
      coords << [x0 + x, y0 + y]
      coords << [x0 + x, y0 - y]
      coords << [x0 - x, y0 + y]
      coords << [x0 - x, y0 - y]
      coords << [x0 + y, y0 + x]
      coords << [x0 + y, y0 - x]
      coords << [x0 - y, y0 + x]
      coords << [x0 - y, y0 - x]
      
      if d < 0
        d += 4 * x + 6
      else
        d += 4 * (x - y) + 10
        y -= 1
      end
      x += 1
    end until x == y
    coords
  end

  def self.circle_coordinates(xm, ym, radius)
    x = -radius
    y = 0
    err = 2-2*radius
    coords = []

    begin
      coords << [xm - x, ym + y]
      coords << [xm - y, ym - x]
      coords << [xm + x, ym - y]
      coords << [xm + y, ym + x]
      radius = err
      if radius <= y
        y += 1
        err += y * 2 + 1
      end
      if radius > x or err > y
        x += 1
        err += x * 2 + 1
      end
    end while (x < 0)
    coords
  end

end
