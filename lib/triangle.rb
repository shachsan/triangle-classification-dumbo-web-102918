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
       if ((side1 || side2)==side3) || ((side3 || side2==side1))
         return true
       else
         return false
       end
     end
  end

  def scalene
    if !equilateral && !isosceles
      
  end

  def kind

  end
end
