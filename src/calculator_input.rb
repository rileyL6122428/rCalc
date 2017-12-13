class CalculatorInput

  attr_reader :initial_value

  def initialize(state)
    @initial_value = state[:initial_value]
  end
end
