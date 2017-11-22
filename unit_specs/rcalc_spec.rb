require 'rspec'
require_relative '../src/rcalc.rb'

describe RCalc do

  before do
    @interpreter = spy('interpreter')
    @evaluator = spy('evaluator')
    @formatter = spy('formatter')
    @rcalc = RCalc.new(@interpreter, @evaluator, @formatter)
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
      @interpreter.stub(:interpret) { :interpreted_input }

      @rcalc.enter('1 + 1')
      @rcalc.submit

      expect(@evaluator).to have_received(:evaluate).with(:interpreted_input)
    end

    it "passes the evaluated expression to the formatter" do
      @evaluator.stub(:evaluate) { :evaluated_expression }

      @rcalc.enter('1 + 1')
      @rcalc.submit

      expect(@formatter).to have_received(:format).with(:evaluated_expression)
    end
  end

end
