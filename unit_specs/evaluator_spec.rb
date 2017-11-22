require 'rspec'
require_relative '../src/evaluator.rb'

describe 'Evaluator' do

  describe '#evaluate' do

    it "sums an array of numbers" do
      evaluator = Evaluator.new
      expect(evaluator.evaluate([1, 2, 3])).to eq(6)
    end
    
  end
end
