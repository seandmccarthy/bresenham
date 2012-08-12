class ASCIIPlot

  DOT = '.'
  EMPTY = ' '
  X_AXIS = '-'
  Y_AXIS = '|'

  def initialize(x_start, x_end, y_start, y_end)
    @x_start = x_start
    @x_end = x_end
    @y_start = y_start
    @y_end = y_end
    @grid = Hash.new
  end

  def plot(point_list)
    point_list.map{|points| @grid[points] = true}
puts @grid.inspect
    
    output = ''
    @y_end.downto(@y_start).each do |y|
      (@x_start..@x_end).each do |x|
        if @grid[[x,y]]
puts "#{x}, #{y}"
          output << DOT
        elsif x == 0
          output << Y_AXIS
        elsif y == 0
          output << X_AXIS
        else
          output << EMPTY
        end
      end
      output << "\n"
    end
    output
  end

end
