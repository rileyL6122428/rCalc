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

  def ==(other_input)
    compare_intial_values(other_input) && compare_operation_queues(other_input)
  end

  private

  def compare_intial_values(other_input)
    @initial_value == other_input.initial_value
  end

  def compare_operation_queues(other_input)
    return false unless queue.length == other_input.queue.length

    (0...queue.length).all? do |index|
      operation, other_operation = queue[index], other_input.queue[index]

      operation.operator == other_operation.operator &&
      operation.number == other_operation.number
    end
  end

  protected

  def queue
    @operation_queue
  end

end
