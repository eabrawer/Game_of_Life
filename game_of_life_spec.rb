require_relative  './game_of_life.rb'

describe "Game of Life" do
	describe World do
		subject { World.new }

		it "should create a new world object" do
			expect(subject).to be_a World
		end

		it "should respond to col and row methods" do
			expect(subject).to respond_to(:cols)
			expect(subject).to respond_to(:rows)		
			expect(subject).to respond_to(:cell_grid)	
		end
	end
end