module Simulator
  class RollResult
    attr_reader :description, :individual_rolls, :total

    def initialize(dice)
      @dice = dice
      @description = dice.map(&:sides).join(", ")
      @individual_rolls = dice.map(&:roll)
      @total = @individual_rolls.sum
    end
  end
end
