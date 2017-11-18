require 'rspec'
require_relative '../src/rcalc.rb'

describe RCalc do

  describe '#initialize' do

  end

  describe '#enter' do
    it 'sets the value of input' do
      rcalc = RCalc.new
      rcalc.enter('8')
      expect(rcalc.input).to eq('8')
    end
  end

  describe '#submit' do
    it 'computes the entered expression' do
      rcalc = RCalc.new
      rcalc.enter('8')
      rcalc.submit
      expect(rcalc.output).to eq('8')
    end
  end
end
