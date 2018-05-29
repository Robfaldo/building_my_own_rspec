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

  context 'include' do

    it 'returns test passed msg if the array includes the number given' do
      #set up 
      exercise = Expect.new([1, 2, 3]).to(Include.new(2))
      expect(exercise).to eq "Test passed! :)"
    end

    it 'returns test passed msg if the array includes the number given' do
      exercise = Expect.new([1, 2, 3]).to(Include.new(7))
      expect(exercise).to eq "Test failed! :("
    end
  end


end

