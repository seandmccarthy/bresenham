require 'minitest/autorun'
require 'bresenham'

class TestBresenham < MiniTest::Unit::TestCase

  def test_line_straight
    expected = [[0, 0], [1, 0], [2, 0]]
    assert Bresenham::line_coordinates(0, 0, 2, 0), expected
  end

  def test_line_diagonal
    expected = [[0, 0], [1, 1], [2, 2], [3, 3], [4, 4], [5, 5]]
    assert Bresenham::line_coordinates(0, 0, 5, 5), expected
  end

  def test_line_30_degrees
    expected = [[0, 0], [1, 0], [2, 1], [3, 1], [4, 1], [5, 2], [6, 2], [7, 2], [8, 2], [9, 3], [10, 3]]
    assert Bresenham::line_coordinates(0, 0, 10, 3), expected
  end

  def test_line_backwards
    expected = [[10, 3], [9, 3], [8, 2], [7, 2], [6, 2], [5, 1], [4, 1], [3, 1], [2, 1], [1, 0], [0, 0]]
    assert Bresenham::line_coordinates(10, 3, 0, 0), expected
  end

  def test_line_negative
    expected = [[1, 3], [1, 2], [0, 1], [0, 0], [0, -1], [-1, -2], [-1, -3]]
    assert Bresenham::line_coordinates(1, 3, -1, -3), expected
  end

end
