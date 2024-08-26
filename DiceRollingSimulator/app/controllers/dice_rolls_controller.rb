class DiceRollsController < ApplicationController
  def new
  end

  def create
    dice_count = params[:dice_count].to_i
    dice_sides = params[:dice_sides].map(&:to_i)

    dice = dice_sides.map { |sides| Simulator::Die.new(sides) }
    @result = Simulator::RollResult.new(dice)
  end
end
