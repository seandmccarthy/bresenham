require 'minitest/autorun'
require 'bresenham'
require 'ascii_plot'

class TestASCIIPlot < MiniTest::Unit::TestCase

  def test_short_line_plot
    expected = <<EOP
|          
|          
|          
|          
|          
|          
|          
|        ..
|    ....  
| ...      
..---------
EOP
    plot = ASCIIPlot.new(0, 10, 0, 10)
    output = plot.plot Bresenham::Line::coordinates(0, 0, 10, 3)
    assert_equal output, expected
  end

  def test_long_line_plot
    expected = <<EOP
          |         .
          |        . 
          |        . 
          |       .  
          |      .   
          |     .    
          |     .    
          |    .     
          |   .      
          |  .       
----------|--.-------
          | .        
          |.         
          .          
          .          
         .|          
        . |          
       .  |          
       .  |          
      .   |          
     .    |          
EOP
    plot = ASCIIPlot.new(-10, 10, -10, 10)
    output = plot.plot Bresenham::Line::coordinates(-5, -10, 10, 10)
    assert_equal output, expected
  end

  def test_small_circle_plot
    expected = <<EOP
   ...   
  . | .  
 .  |  . 
.   |   .
.---|---.
.   |   .
 .  |  . 
  . | .  
   ...   
EOP
    plot = ASCIIPlot.new(-4, 4, -4, 4)
    output = plot.plot Bresenham::Circle::coordinates(0, 0, 4)
    assert_equal output, expected
  end

  def test_mid_circle_plot
    expected = <<EOP
      .....      
    ..  |  ..    
   .    |    .   
  .     |     .  
 .      |      . 
 .      |      . 
.       |       .
.       |       .
.-------|-------.
.       |       .
.       |       .
 .      |      . 
 .      |      . 
  .     |     .  
   .    |    .   
    ..  |  ..    
      .....      
EOP
    plot = ASCIIPlot.new(-8, 8, -8, 8)
    output = plot.plot Bresenham::Circle::coordinates(0, 0, 8)
    assert_equal output, expected
  end

  def test_large_circle_plot
    expected = <<EOP
                .........                
             ...    |    ...             
           ..       |       ..           
         ..         |         ..         
        .           |           .        
       .            |            .       
      .             |             .      
     .              |              .     
    .               |               .    
   .                |                .   
   .                |                .   
  .                 |                 .  
  .                 |                 .  
 .                  |                  . 
 .                  |                  . 
 .                  |                  . 
.                   |                   .
.                   |                   .
.                   |                   .
.                   |                   .
.-------------------|-------------------.
.                   |                   .
.                   |                   .
.                   |                   .
.                   |                   .
 .                  |                  . 
 .                  |                  . 
 .                  |                  . 
  .                 |                 .  
  .                 |                 .  
   .                |                .   
   .                |                .   
    .               |               .    
     .              |              .     
      .             |             .      
       .            |            .       
        .           |           .        
         ..         |         ..         
           ..       |       ..           
             ...    |    ...             
                .........                
EOP
    plot = ASCIIPlot.new(-20, 20, -20, 20)
    output = plot.plot Bresenham::Circle::coordinates(0, 0, 20)
    assert_equal output, expected
  end

  def test_non_zero_origin_plot
    expected = <<EOP
      .   |          
      .   |          
     .    |          
     .    |          
     .    |          
     .    |          
     .    |          
     .    |          
     .    |          
      .   |          
------.---|----------
       .  |          
        . |          
         .|          
          ..       ..
          | .......  
          |          
          |          
          |          
          |          
          |          
EOP
    plot = ASCIIPlot.new(-10, 10, -10, 10)
    output = plot.plot Bresenham::Circle::coordinates(5, 5, 10)
    assert_equal output, expected
  end
end
