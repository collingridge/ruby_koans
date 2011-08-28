# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def validate_triangle(sides)
  sides.each {|side| raise TriangleError if side <=0 }    
  sides.sort!
  longest = sides.pop
  others = sides.pop + sides.pop
  raise TriangleError if others <= longest
end

def triangle(a, b, c)
  # WRITE THIS CODE
  sides = [a, b, c] 

  validate_triangle(sides)
  #will be scalene if no sides match
  type = :scalene
 
  matching = 0 
  matching += 1 if a == b
  matching += 1 if b == c
  matching += 1 if a == c
  
  type = :isosceles if matching == 1
  type = :equilateral if matching == 3

  type
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
