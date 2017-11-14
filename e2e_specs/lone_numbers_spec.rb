require 'rspec'
require_relative '../src/rcalc.rb'

describe 'rCalc with lone numbers' do
  it 'evaluates the lone number 5' do
    rcalc = RCalc.new
    rcalc.enter('5')
    rcalc.submit
    expect(rcalc.output_display).to eq('5')
  end
end
