class RCalc

  attr_reader :input, :output

  def initialize(interpreter)
    @input = nil
    @interpreter = interpreter
    @output = nil
  end

  def enter(input)
    @input = input
  end

  def submit
    @interpreter.interpret(@input)
    @output = @input
  end

end
