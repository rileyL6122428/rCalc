require_relative 'calculator_input.rb'

class Interpreter

  def interpret(input)
    formatted_input = input.gsub(' ', '')
    initial_value = formatted_input.split(/\+|-/).map(&:to_f)[0]
    CalculatorInput.new(initial_value: initial_value)
  end

end
