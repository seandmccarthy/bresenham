# Bresenham

A set of functions implementing Bresenham's algorithm for lines and circles.

## Installation

Add this line to your application's Gemfile:

    gem 'bresenham'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bresenham

## Usage

    require 'bresenham'
    # x_start, y_start, x_end, y_end
    line_points_set = Bresenham::Line::coordinates(0, 0, 3, 10)

    # x_origin, y_origin, radius
    circle_points_set = Bresenham::Circle::coordinates(0, 0, 10)

