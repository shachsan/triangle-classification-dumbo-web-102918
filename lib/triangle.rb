class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def equilateral
    (side1 == side2 && side2 == side3) ? true : false
  end

  def isosceles
    if !equilateral
      if side1 == side2 || side2 == side3 || side1 ==side3
         return true
       end
     end
  end

  def scalene
    if !equilateral && !isosceles
      return true
    end
  end

  def kind
    return :isosceles if isosceles
    return :equilateral if equilateral
    return :scalene if scalene

    begin
      raise TriangleError
    rescue TriangleError => error
      error.message
    end
  end

  class TriangleError
    def message
    end 
  end
end
