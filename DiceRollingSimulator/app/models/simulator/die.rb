module Simulator
	class Die
		attr_reader :sides

		def initialize(sides)
			@sides = sides
		end

		def roll
			rand(1..sides)
		end
	end
end
