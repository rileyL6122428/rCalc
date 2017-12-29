require 'rspec'
require_relative '../src/evaluator.rb'
require_relative '../src/calculator_input.rb'

describe 'Evaluator' do

  describe '#evaluate' do

    it "evaluates the operation queue of a calculator input" do
      evaluator = Evaluator.new
      input = CalculatorInput.new(
        initial_value: 10,
        operation_queue: [
          Operation.new(operator: :+, number: 4),
          Operation.new(operator: :-, number: 3),
        ]
      )

      result = evaluator.evaluate(input)

      expect(result).to eq(11)
    end

  end
end
