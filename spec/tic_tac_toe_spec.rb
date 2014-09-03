require 'rspec'
require 'board'
require 'game'
require 'player'
require 'space'
require 'pry'

describe "game" do
  describe "initialize" do
    it "creates a new board with player 'x' and player 'o'" do
      new_game = Game.new
      expect(new_game).to be_an_instance_of Game
    end
  end

  describe "move" do
    it "changes the @marked_by value on the space corresponding to the x and y arguments given" do
      new_game = Game.new
      new_game.move("x", 1, "a")
      expect(new_game.game_board.spaces[0].marked_by).to eq "x"
    end
  end
end
