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
end
