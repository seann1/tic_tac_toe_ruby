class Game
  attr_reader(:x_player, :o_player)
  attr_accessor(:game_board)

  def initialize
    @game_board = Board.new
    @x_player = Player.new("x")
    @o_player = Player.new("o")
  end

  def self.move(symbol, number_location, letter_location)
    @game_board.spaces.each do |space|
      if space.number_location == number_location && space.letter_location == letter_location
end
