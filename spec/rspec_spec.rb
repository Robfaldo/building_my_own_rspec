require 'rspec'

describe 'Rspec mock' do 

  context 'Equal' do 
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

  context 'respond_to' do 
    it 'returns true if given an object and a method that can be called on it' do
      # setup 
      obj = "string"
      method = :length
      # exercise 
      exercise = Expect.new(obj).to(RespondTo.new(method))
      # verification 
      expect(exercise).to eq "Test passed! :)"
    end

    it 'returns false if given an object where a method cant be called on it' do 
      obj = "string" 
      method = :capital
      exercise = Expect.new(obj).to(RespondTo.new(method))
      expect(exercise).to eq "Test failed! :("
    end
  end

  context 'BeA' do 
    it 'passes the test if the object is an instance of the class' do
      # setup 
      obj = "string"
      the_class = String 
      # exercise 
      exercise = Expect.new(obj).to(BeA.new(the_class))
      # verification
      expect(exercise).to eq "Test passed! :)"
    end

    it 'fails the test if the object isnt an instance of the class' do
      obj = "string"
      the_class = Fixnum
      exercise = Expect.new(obj).to(BeA.new(the_class))
      expect(exercise).to eq "Test failed! :("
    end
  end
end

# 3. `expect(obj).to be_a Class`
# 
