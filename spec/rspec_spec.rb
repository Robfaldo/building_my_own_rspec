require 'rspec'

describe 'Rspec mock' do 
  it 'returns false if 2 values arent equal' do
    # Setup 
    expect = Expect.new(true)
    # Exercise
    answer = expect.to_equal(false)
    # Verification
    expect(answer).to eq "Test fails! D;" 
  end

  it 'returns true if 2 values are equal' do
    # Setup 
    expect = Expect.new(true)
    # Exercise
    answer = expect.to_equal(true)
    # Verification
    expect(answer).to eq "Test passes! :)" 
  end


end