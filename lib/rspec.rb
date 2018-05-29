
class Expect 

  def initialize(first_value)
    @first = first_value
  end

  def to_equal(second_value)
    @first == second_value ? "Test passes! :)" : "Test fails! D;"
  end

end



# puts expect_to_be_equal(true, true)
# # => "Test passes! :)"
# puts expect_to_be_equal(true, false)
# # => "Test fails! D:"


