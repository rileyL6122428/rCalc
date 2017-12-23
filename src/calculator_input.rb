require_relative 'operation'

class CalculatorInput

  attr_reader :initial_value

  def initialize(state)
    @initial_value = state[:initial_value]
    @operation_queue = state[:operation_queue]
  end

  def each_operation(&proc)
    @operation_queue.each do |operation|
      proc.call(operation)
    end
  end
end
