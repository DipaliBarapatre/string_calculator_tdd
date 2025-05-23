require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

   it "returns 0 for an empty string" do
     expect(calculator.add("")).to eq(0)
   end

    it "returns the number for a single number" do
      expect(calculator.add("3")).to eq(3)
    end

    it "returns sum of two numbers separated by a comma" do
      expect(calculator.add("3,2")).to eq(5)
    end

    it "add multiple numbers" do
      expect(calculator.add("1,2,3,4,5")).to eq(15)
    end

    it 'should not return wrong value' do
	   expect(calculator.add("1, 3, 4")).not_to eq(10)
	  end

    it "handle new lines between numbers" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'should support different delimiters' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an error for negative numbers" do
      expect { calculator.add("-1,2,-3") }.to raise_error("Negatives not allowed: -1, -3")
    end

end