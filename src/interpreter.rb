class Interpreter

  def interpret(input)
    input.split('+').map(&:strip).map(&:to_f)
  end
  
end
