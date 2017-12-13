require 'rspec'
require_relative '../src/interpreter.rb'
require_relative '../src/calculator_input.rb'

describe Interpreter do

  describe '#interpret' do

    skip "converts string expression to an array of numbers" do
      interpreter = Interpreter.new
      expect(interpreter.interpret('3 + 2')).to eq([3, 2])
      expect(interpreter.interpret('3+2')).to eq([3, 2])
      expect(interpreter.interpret('    3 +2   ')).to eq([3, 2])
      expect(interpreter.interpret('3')).to eq([3])
      expect(interpreter.interpret('  3  ')).to eq([3])
    end

    skip "interprets an expression with more than two numbers" do
      interpreter = Interpreter.new
      expect(interpreter.interpret('10 + 11 + 13')).to eq([10, 11, 13])
    end

    it "transforms input into an instance of CalculatorInput" do
      interpreter = Interpreter.new
      calculator_input = interpreter.interpret('10 + 4 - 3')
      expect(calculator_input).to be_a CalculatorInput
    end

  end

end
