require_relative  './game_of_life.rb'

describe "Game of Life" do
	describe World do
		subject { World.new }
		it "should create a new world object" do
			expect(subject).to be_a World
		end
	end
end