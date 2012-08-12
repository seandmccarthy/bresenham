require 'minitest/autorun'
require 'bresenham'

class TestBresenham < MiniTest::Unit::TestCase

  def test_unit_circle
    expected = [[1.0, 0.0], [0.0, 1.0], [-1.0, 0.0], [0.0, -1.0]]
    assert Bresenham::circle_coordinates(0, 0, 1), expected
  end

  def test_odd_radius
    expected = [[3.0, 0.0], [0.0, 3.0], [-3.0, 0.0], [0.0, -3.0], [3.0, 1.0], [-1.0, 3.0], [-3.0, -1.0], [1.0, -3.0], [2.0, 2.0], [-2.0, 2.0], [-2.0, -2.0], [2.0, -2.0], [1.0, 3.0], [-3.0, 1.0], [-1.0, -3.0], [3.0, -1.0]]
    assert Bresenham::circle_coordinates(0, 0, 3), expected
  end

  def test_even_radius
    expected = [[4.0, 0.0], [0.0, 4.0], [-4.0, 0.0], [0.0, -4.0], [4.0, 1.0], [-1.0, 4.0], [-4.0, -1.0], [1.0, -4.0], [3.0, 2.0], [-2.0, 3.0], [-3.0, -2.0], [2.0, -3.0], [2.0, 3.0], [-3.0, 2.0], [-2.0, -3.0], [3.0, -2.0], [1.0, 4.0], [-4.0, 1.0], [-1.0, -4.0], [4.0, -1.0]]
    assert Bresenham::circle_coordinates(0, 0, 4), expected
  end

  def test_larger_even_radius

    puts Bresenham::circle_coordinates(0, 0, 8).inspect
  end
end
