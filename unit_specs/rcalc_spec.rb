require 'rspec'
require_relative '../src/rcalc.rb'

describe RCalc do

  before do
    @interpreter = spy('interpreter')
    @evaluator = spy('evaluator')
    @rcalc = RCalc.new(@interpreter, @evaluator)
  end

  describe '#enter' do
    it 'sets the value of input' do
      @rcalc.enter('8')
      expect(@rcalc.input).to eq('8')
    end
  end

  describe '#submit' do
    it "passes the input to the interpreter" do
      @rcalc.enter('8')
      @rcalc.submit
      expect(@interpreter).to have_received(:interpret).with('8')
    end

    it "passes the interpreted input to evaluator" do
      @interpreter.stub(:interpret) { [1, 1] }

      @rcalc.enter('1 + 1')
      @rcalc.submit

      expect(@evaluator).to have_received(:evaluate).with([1, 1])
    end

    it "sets the output equal to the evaluated expression converted to a string" do
      @evaluator.stub(:evaluate) { 2 }

      @rcalc.enter('1 + 1')
      @rcalc.submit

      expect(@rcalc.output).to eq('2')
    end
  end

end
