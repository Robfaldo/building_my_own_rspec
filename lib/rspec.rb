class Expect 

  def initialize(value)
    @value = value 
  end

  def to(comparrison) 
    if @value == comparrison.first_value
      return "Test passed! :)"
    else 
      return "Test failed! :("
    end
  end
end

class Equal 

  attr_reader :first_value

  def initialize(first_value)
    @first_value = first_value
  end 
end
