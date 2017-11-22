class RCalc

  attr_reader :input, :output

  def initialize(interpreter, evaluator, formatter)
    @interpreter = interpreter
    @evaluator = evaluator
    @formatter = formatter
    @input = nil
    @output = nil
  end

  def enter(input)
    @input = input
  end

  def submit
    interpreted_input = @interpreter.interpret(@input)
    evaluated_expression = @evaluator.evaluate(interpreted_input)
    @output = @formatter.format(evaluated_expression)
  end

end
