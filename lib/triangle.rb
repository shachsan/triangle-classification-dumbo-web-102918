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
    side1 || side2 
  end

  def scalene

  end

  def kind

  end
end
