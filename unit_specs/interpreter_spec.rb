require 'rspec'
require_relative '../src/interpreter.rb'

describe Interpreter do

  describe '#interpret' do
    it "converts string expression to an array of numbers" do
      interpreter = Interpreter.new
      expect(interpreter.interpret('3 + 2')).to eq([3, 2])
    end
  end

end