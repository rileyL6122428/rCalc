require 'rspec'
require_relative '../src/calculator_input'

describe CalculatorInput do

  before do
    @calculator_input = CalculatorInput.new(
      initial_value: 6,
      operation_queue: [
        Operation.new(operator: :+, number: 3),
        Operation.new(operator: :-, number: 5),
      ]
    )
  end

  it 'exposes an initial value getter' do
    expect(@calculator_input.initial_value).to eq(6)
  end

  it "initializes with an operation queue" do
    operations = []

    @calculator_input.each_operation do |operation|
      operations << operation
    end

    expect(operations.length).to eq(2)
    expect(operations[0].operator).to be(:+)
    expect(operations[0].number).to eq(3)
    expect(operations[1].operator).to be(:-)
    expect(operations[1].number).to eq(5)
  end

  describe "#==" do
    it "returns true when the initial value and operation queue are equivalent" do
      same_input = CalculatorInput.new(
        initial_value: 6,
        operation_queue: [
          Operation.new(operator: :+, number: 3),
          Operation.new(operator: :-, number: 5),
        ]
      )
      expect(@calculator_input == same_input).to be(true)
    end

    it "returns false when initial values differ" do
      differing_input = CalculatorInput.new(
        initial_value: 5,
        operation_queue: [
          Operation.new(operator: :+, number: 3),
          Operation.new(operator: :-, number: 5),
        ]
      )

      expect(@calculator_input == differing_input).to be(false)
    end

    it "returns false when the operation queue is different" do
      differing_inputs = [
        CalculatorInput.new(
          initial_value: 6,
          operation_queue: [
            Operation.new(operator: :-, number: 5),
            Operation.new(operator: :+, number: 3),
          ]
        ),
        CalculatorInput.new(
          initial_value: 6,
          operation_queue: [
            Operation.new(operator: :+, number: 18),
            Operation.new(operator: :-, number: 11),
          ]
        ),
        CalculatorInput.new(
          initial_value: 6,
          operation_queue: [
            Operation.new(operator: :-, number: 3),
            Operation.new(operator: :+, number: 5),
          ]
        ),
        CalculatorInput.new(
          initial_value: 6,
          operation_queue: [
            Operation.new(operator: :-, number: 5),
            Operation.new(operator: :+, number: 3),
            Operation.new(operator: :+, number: 10),
          ]
        ),
        CalculatorInput.new(initial_value: 6, operation_queue: [])
      ]
      differing_inputs.each {|input| expect(@calculator_input == input).to be(false)}

    end
  end

end
