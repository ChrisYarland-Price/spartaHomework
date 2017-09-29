require_relative "quad.rb"
require_relative "square.rb"
require_relative "rectangle.rb"
# Squares
side_length = 5
square_5 = Square.new(side_length)

square_5.describe


# scale the square by a factor of 10
square_5.scale(10)
square_5.describe

#Rectangles
chris_home = Rectangle.new(20, 35, "Chris's Home")
chris_home.describe
