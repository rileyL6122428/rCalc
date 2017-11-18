class RCalc

  attr_reader :input, :output

  def initialize
    @input = nil
    @output = nil
  end

  def enter(input)
    @input = input
  end

  def submit
    @output = @input
  end
end
