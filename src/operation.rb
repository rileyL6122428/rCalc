class Operation

  attr_reader :operator, :number

  def initialize(state)
    @operator = state[:operator]
    @number = state[:number]
  end

end
