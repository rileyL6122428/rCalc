require 'rspec'
require_relative '../src/rcalc.rb'

describe RCalc do

  before do
    @interpreter = spy('interpreter')
    @rcalc = RCalc.new(@interpreter)
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
  end

end
