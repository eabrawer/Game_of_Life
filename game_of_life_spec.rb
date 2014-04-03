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

		it "should create a proper cell grid on initialization" do
			expect(subject.cell_grid).to be_a(Array)
			expect(subject.cell_grid.each { |row| row }).to be_a(Array) 
		end
	end

	describe Cell do
		subject { Cell.new }
		it "should create a new cell object" do
			expect(subject).to be_a(Cell)
		end
	end
end