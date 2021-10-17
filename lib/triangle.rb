require 'pry'
!!!
class Triangle
  # write code here

  # attr_reader :s1, :s2, :s3
  attr_reader :sides

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
  end

  def kind
    sides.sort!
    # binding.pry
    if sides[0] + sides[1] <= sides[2] || sides[0] <= 0
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    elsif sides[0] == sides[2]
      :equilateral
    elsif sides[1] == sides[2]
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
    
  end

end
