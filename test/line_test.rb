require 'minitest/autorun'
require 'bresenham'

class TestBresenhamLine < MiniTest::Unit::TestCase

  def test_horizontal
    expected = [[0, 0], [1, 0], [2, 0]]
    assert_equal Bresenham::Line::coordinates(0, 0, 2, 0).to_a, expected
  end

  def test_diagonal
    expected = [[0, 0], [1, 1], [2, 2], [3, 3], [4, 4], [5, 5]]
    assert_equal Bresenham::Line::coordinates(0, 0, 5, 5).to_a, expected
  end

  def test_30_degrees
    expected = [[0, 0], [1, 0], [2, 1], [3, 1], [4, 1], [5, 2], [6, 2], [7, 2], [8, 2], [9, 3], [10, 3]]
    assert_equal Bresenham::Line::coordinates(0, 0, 10, 3).to_a, expected
  end

  def test_30_degress_backwards
    expected = [[10, 3], [9, 3], [8, 2], [7, 2], [6, 2], [5, 1], [4, 1], [3, 1], [2, 1], [1, 0], [0, 0]]
    assert_equal Bresenham::Line::coordinates(10, 3, 0, 0).to_a, expected
  end

  def test_negative_axis
    expected = [[1, 3], [1, 2], [0, 1], [0, 0], [0, -1], [-1, -2], [-1, -3]]
    assert_equal Bresenham::Line::coordinates(1, 3, -1, -3).to_a, expected
  end

end
