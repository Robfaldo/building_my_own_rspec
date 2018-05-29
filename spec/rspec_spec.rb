require 'rspec'

describe 'Rspec mock' do 
  it 'returns false if 2 values arent equal' do
    # Exercise
    answer = Expect.new(true).to(Equal.new(false))
    # Verification
    expect(answer).to eq "Test failed! :(" 
  end

  it 'returns true if 2 values are equal' do
    # Exercise
    answer = Expect.new(true).to(Equal.new(true))
    # Verification
    expect(answer).to eq "Test passed! :)" 
  end


end

