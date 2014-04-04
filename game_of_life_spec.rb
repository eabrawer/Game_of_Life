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
			expect(subject.cell_grid.each do|row|
				row.each do |col|
					expect(col).to be_a(Cell)
				end
			end).to be_a(Array) 
		end
	end

	describe Cell do
		subject { Cell.new }
		it "should create a new cell object" do
			expect(subject).to be_a(Cell)
		end

		it "should respond to proper methods" do
			expect(subject).to respond_to(:alive)
			expect(subject).to respond_to(:x)
			expect(subject).to respond_to(:y)			
		end

		it "should initialize properly" do
			expect(subject.alive).to be_false
			expect(subject.y).to be(0)
			expect(subject.x).to be(0)
		end
	end

	describe 'Rules' do

		let(:game) { Game.new }

		describe "Rule 1: Any live cell with fewer than two live neighbours dies, as if caused by under-population" do
			it "should kill a live cell with 1 live neighbor" do
			end
		end

		describe "Rule 2: Any live cell with two or three live neighbours lives on to the next generation" do
		end

		describe "Rule 3: Any live cell with more than three live neighbours dies, as if by overcrowding" do
		end

		describe "Rule 4: Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction" do
		end
	end

	describe Game do
		subject { Game.new }

		it "should create a new game object" do
			expect(subject).to be_a(Game)
		end

		it "should respond to proper methods" do
			expect(subject).to respond_to(:world)
			expect(subject).to respond_to(:seeds)
		end

		it "should initialize properly" do
			expect(subject.world).to be_a(World)
			expect(subject.seeds).to be_a(Array)
		end
	end

end


