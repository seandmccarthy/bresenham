module Bresenham
  module Circle
    def self.coordinates(xm, ym, radius)
      x = -radius
      y = 0
      err = 2-2*radius
      coords = Set.new

      begin
        coords << [xm + x, ym - y]
        coords << [xm - x, ym + y]
        coords << [xm + y, ym + x]
        coords << [xm - y, ym - x]
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

    def self.coordinates2(x0, y0, r)
      p = 3 - 2 * r
      x = 0
      y = r
      coords = Set.new

      while (y >= x)
        coords << [x0 + x, y0 + y]
        coords << [x0 + x, y0 - y]
        coords << [x0 - x, y0 + y]
        coords << [x0 - x, y0 - y]
        coords << [x0 + y, y0 + x]
        coords << [x0 + y, y0 - x]
        coords << [x0 - y, y0 + x]
        coords << [x0 - y, y0 - x]
        if (p < 0)
          p += 4*x + 6
          x += 1
        else
          p += 4*(x - y) + 10
          x += 1
          y -= 1
        end
      end
      coords
    end

    def self.midpoint_algorithm(x0, y0, radius)
      f = 1 - radius
      ddF_x = 1
      ddF_y = -2 * radius
      x = 0
      y = radius
      coords = Set.new
    
      coords << [x0, y0 + radius]
      coords << [x0, y0 - radius]
      coords << [x0 + radius, y0]
      coords << [x0 - radius, y0]
    
      while x < y
        if f >= 0
          y -= 1
          ddF_y += 2
          f += ddF_y
        end
        x += 1
        ddF_x += 2;
        f += ddF_x;    
        coords << [x0 + x, y0 + y]
        coords << [x0 - x, y0 + y]
        coords << [x0 + x, y0 - y]
        coords << [x0 - x, y0 - y]
        coords << [x0 + y, y0 + x]
        coords << [x0 - y, y0 + x]
        coords << [x0 + y, y0 - x]
        coords << [x0 - y, y0 - x]
      end
      coords
    end

  end
end
