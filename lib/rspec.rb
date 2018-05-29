class Expect 

  attr_reader :value

  def initialize(value)
    @value = value 
  end

  def to(comparrison)
    raise "comparrison.value is nil" if comparrison.value == nil
    if comparrison.match(@value)
      return "Test passed! :)"
    else 
      return "Test failed! :("
    end
  end
end

class Equal 

  attr_reader :value

  def initialize(value)
    @value = value
  end 

  def match(value)
    @value == value
  end
end

class Include 

  attr_reader :value

  def initialize(value) 
    @value = value
  end

  def match(value)
    value.include?(@value)
  end
end

class RespondTo

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def match(value)
    value.respond_to?(@value)
  end
end

class BeA
  
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def match(value) 
    value.is_a?(@value) 
  end

end

def expect(value)
  Expect.new(value) 
end

def eq(value) 
  Equal.new(value)
end

puts expect(true).to(eq(false))

puts "string".respond_to? :capitalize

puts 4.is_a?(Fixnum)