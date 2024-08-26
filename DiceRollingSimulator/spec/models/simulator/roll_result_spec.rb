# spec/models/simulator/roll_result_spec.rb
require 'rails_helper'

RSpec.describe Simulator::RollResult, type: :model do
  let(:die1) { instance_double("Simulator::Die", sides: 6, roll: 4) }
  let(:die2) { instance_double("Simulator::Die", sides: 8, roll: 5) }
  let(:dice) { [die1, die2] }
  let(:roll_result) { Simulator::RollResult.new(dice) }

  describe '#initialize' do
    it 'sets the description based on the dice sides' do
      expect(roll_result.description).to eq("6, 8")
    end

    it 'sets the individual rolls correctly' do
      expect(roll_result.individual_rolls).to eq([4, 5])
    end

    it 'calculates the total of the individual rolls' do
      expect(roll_result.total).to eq(9)
    end
  end
end
