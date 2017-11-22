require 'rspec'
require_relative '../src/interpreter.rb'

describe Interpreter do

  describe '#interpret' do

    it "converts string expression to an array of numbers" do
      interpreter = Interpreter.new
      expect(interpreter.interpret('3 + 2')).to eq([3, 2])
      expect(interpreter.interpret('3+2')).to eq([3, 2])
      expect(interpreter.interpret('    3 +2   ')).to eq([3, 2])
      expect(interpreter.interpret('3')).to eq([3])
      expect(interpreter.interpret('  3  ')).to eq([3])
    end

    it "interprets an expression with more than two numbers" do
      interpreter = Interpreter.new
      expect(interpreter.interpret('10 + 11 + 13')).to eq([10, 11, 13])
    end

  end

end
