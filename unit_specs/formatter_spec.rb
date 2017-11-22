require 'rspec'
require_relative '../src/formatter.rb'

describe Formatter do

  describe '#format' do

    it "converts a number to a string" do
      formatter = Formatter.new
      expect(formatter.format(2.5)).to be_a String
    end

    it "omits a decimal point if the number is an integer" do
      formatter = Formatter.new
      expect(formatter.format(2.0)).to eq('2')
    end

  end
end
