require_relative 'calculator_input'
require_relative 'operation'
require 'byebug'

class Interpreter

  def interpret(input)
    formatted_input = input.gsub(' ', '')
    numbers = formatted_input.split(/\+|-/).map(&:to_f)
    operators = formatted_input.scan(/\+|-/).map(&:to_sym)

    initial_value = numbers.shift
    operation_queue = (0...numbers.length).map do |index|
      Operation.new(operator: operators[index], number: numbers[index])
    end


    CalculatorInput.new(
      initial_value: initial_value,
      operation_queue: operation_queue
    )
  end

end
