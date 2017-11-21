class Interpreter

  def initialize

  end

  def interpret(input)
    input.split('+').map(&:strip).map(&:to_f) 
  end
end
