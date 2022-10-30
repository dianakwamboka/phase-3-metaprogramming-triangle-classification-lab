class Triangle
  attr_reader = :l1, :l2,:l3

  def initialize(l1,l2,l3)
    @l1 = l1 
    @l2 = l2 
    @l3 = l3
  end

  def kind
    raise TriangleError unless valid_triangle?
        if @l1.eql?(@l2) && @l2.eql?(@l3)
          :equilateral
        elsif @l1.eql?(@l2) || @l2.eql?(@l3) || @l1.eql?(@l3)
          :isosceles
        else 
          :scalene 
      end
  end 
  
  def valid_triangle?
    (@l1 && @l2 && @l3) > 0 && @l1 + @l2 > @l3 && @l1 + @l3 > @l2 && @l2 + @l3 > @l1
  end 

  class TriangleError < StandardError
    def warning 
      "Input a valid triangle"
    end 
  end 

end