# spec/models/simulator/die_spec.rb
require 'rails_helper'

RSpec.describe Simulator::Die do
  it 'rolls a number between 1 and the number of sides' do
    die = Simulator::Die.new(6)
    roll = die.roll
    expect(roll).to be >= 1
    expect(roll).to be <= 6
  end
end
