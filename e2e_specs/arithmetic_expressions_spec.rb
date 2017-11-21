require 'rspec'
require_relative '../src/rcalc.rb'
require_relative '../src/interpreter.rb'
require_relative '../src/evaluator.rb'


describe 'rCalc' do

  before do
    @rcalc = RCalc.new(
      Interpreter.new,
      Evaluator.new
    )
  end

  it 'evaluates the lone numbers' do
    @rcalc.enter('5')
    @rcalc.submit
    expect(@rcalc.output).to eq('5')
  end

  it 'evaluates expressions containing the addition operator' do
    @rcalc.enter('1 + 1')
    @rcalc.submit
    expect(@rcalc.output).to eq('2')
  end

end
