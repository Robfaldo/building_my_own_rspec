
class Expect 

  def to_be_equal(first, second)
    first == second ? "Test passes! :)" : "Test fails! D;"
  end

end



# puts expect_to_be_equal(true, true)
# # => "Test passes! :)"
# puts expect_to_be_equal(true, false)
# # => "Test fails! D:"


