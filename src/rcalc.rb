class RCalc

  attr_reader :input

  def initialize
    @input = nil
  end

  def enter(input)
    @input = input
  end
end
