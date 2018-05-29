require 'rspec'

describe 'Rspec mock' do 
  it 'returns false if 2 values arent equal' do
    # Setup 
    expect = Expect.new
    # Exercise
    answer = expect.to_be_equal(true, false)
    # Verification
    expect(answer).to eq "Test fails! D;" 
  end

  it 'returns true if 2 values are equal' do
    # Setup 
    expect = Expect.new
    # Exercise
    answer = expect.to_be_equal(true, true)
    # Verification
    expect(answer).to eq "Test passes! :)" 
  end


end