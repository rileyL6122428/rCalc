require 'rspec'
require_relative '../src/interpreter.rb'
require_relative '../src/calculator_input.rb'

describe Interpreter do

  before do
    @interpreter = Interpreter.new
  end
  
  describe '#interpret' do
    it "transforms input into an instance of CalculatorInput" do
      calculator_input = @interpreter.interpret('10 + 4 - 3')

      expect(calculator_input).to be_a CalculatorInput
      expect(calculator_input).to eq CalculatorInput.new(
        initial_value: 10,
        operation_queue: [
          Operation.new(operator: :+, number: 4),
          Operation.new(operator: :-, number: 3),
        ]
      )
    end
  end

end
