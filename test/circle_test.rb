require 'minitest/autorun'
require 'bresenham'

class TestBresenham < MiniTest::Unit::TestCase

  def test_unit_circle
    expected = [[-1, 0], [0, -1], [0, 1], [1, 0]]
    assert_equal Bresenham::Circle::coordinates(0, 0, 1).to_a.sort, expected
  end

  def test_odd_radius
    expected = [[-3, -1], [-3, 0], [-3, 1], [-2, -2], [-2, 2], [-1, -3], [-1, 3], [0, -3], [0, 3], [1, -3], [1, 3], [2, -2], [2, 2], [3, -1], [3, 0], [3, 1]]
    assert_equal Bresenham::Circle::coordinates(0, 0, 3).to_a.sort, expected
  end

  def test_even_radius
    expected = [[-4, -1], [-4, 0], [-4, 1], [-3, -2], [-3, 2], [-2, -3], [-2, 3], [-1, -4], [-1, 4], [0, -4], [0, 4], [1, -4], [1, 4], [2, -3], [2, 3], [3, -2], [3, 2], [4, -1], [4, 0], [4, 1]]
    assert_equal Bresenham::Circle::coordinates(0, 0, 4).to_a.sort, expected
  end

  def test_non_zero_origin
    expected = [[-6, -3], [-6, -2], [-6, -1], [-5, -4], [-5, 0], [-4, -5], [-4, 1], [-3, -6], [-3, 2], [-2, -6], [-2, 2], [-1, -6], [-1, 2], [0, -5], [0, 1], [1, -4], [1, 0], [2, -3], [2, -2], [2, -1]]
    assert_equal Bresenham::Circle::coordinates(-2, -2, 4).to_a.sort, expected
  end

end
