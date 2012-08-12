require 'minitest/autorun'
require 'bresenham'
require 'ascii_plot'

class TestASCIIPlot < MiniTest::Unit::TestCase

  def test_line_plot
    plot = ASCIIPlot.new(0, 10, 0, 10)
    puts plot.plot Bresenham::line_coordinates(0, 0, 10, 3)
  end

  def test_circle_plot
    #plot = ASCIIPlot.new(-4, 4, -4, 4)
    #puts plot.plot Bresenham::circle_coordinates(0, 0, 4)
    plot = ASCIIPlot.new(-4, 4, -4, 4)
    puts plot.plot Bresenham::circle_coordinates2(0, 0, 4)
    #plot = ASCIIPlot.new(-8, 8, -8, 8)
    #puts plot.plot Bresenham::circle_coordinates(0, 0, 8)
  end
end
