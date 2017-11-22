class Formatter

  def format(number)
    number = number.to_i if is_integer?(number)
    number.to_s
  end

  private

  def is_integer?(number)
    number % 1 == 0
  end

end
