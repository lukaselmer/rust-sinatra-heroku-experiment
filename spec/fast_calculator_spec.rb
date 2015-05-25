require_relative '../app/fast_calculator'

RSpec.describe FastCalculator, '#plus' do
  it 'calculates 1+2' do
    expect(FastCalculator.plus(1.0, 2.0)).to eq 3.0
  end

  it 'calculates 24.56 + 22.5' do
    expect(FastCalculator.plus(24.56, 22.5)).to eq 47.06
  end
end

