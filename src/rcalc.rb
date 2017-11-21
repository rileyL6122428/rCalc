class RCalc

  attr_reader :input, :output

  def initialize(interpreter, evaluator)
    @interpreter = interpreter
    @evaluator = evaluator
    @input = nil
    @output = nil
  end

  def enter(input)
    @input = input
  end

  def submit
    interpreted_input = @interpreter.interpret(@input)
    @evaluator.evaluate(interpreted_input)
    # @output = @input
  end

end
