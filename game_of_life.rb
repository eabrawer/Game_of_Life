# Basic file


class World
	attr_accessor :rows, :cols, :cell_grid 

	def initialize(rows=3, cols=3)
		@rows = rows
		@cols = cols
	end
end