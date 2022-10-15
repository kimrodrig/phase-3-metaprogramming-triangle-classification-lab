class Triangle
  attr_accessor :kind

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    if @sideA > 0 && @sideB > 0 && @sideC > 0 && @sideA + @sideB > @sideC && @sideB + @sideC > @sideA && @sideA + @sideC > @sideB 
      if @sideA == @sideB 
        if @sideA == @sideC
          kind = :equilateral
        else
          kind = :isosceles
        end
      elsif @sideA == @sideC || @sideB == @sideC
        kind = :isosceles
      else
        kind = :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError

  end

end
