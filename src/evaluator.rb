class Evaluator

  def evaluate(input)
    result = input.initial_value

    input.each_operation do |operation|
      result = result.send(operation.operator, operation.number)
    end
    
    result
  end

end
