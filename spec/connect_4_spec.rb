require './lib/connect_4'

EMPTY_BOARD = Array.new(6){ Array.new(7, 0) }
TEST_BOARD = [
  [1,2,1,0,0,1,2],
  [1,2,1,0,0,1,2],
  [1,2,1,0,0,1,2],
  [1,2,1,0,0,1,2],
  [1,2,1,0,0,1,2],
  [1,2,1,0,0,1,2]
]
describe Connect4Game do
  describe '#add_disc' do
    it "drops a disc of the specified player's color in the specified column" do
      game = Connect4Game.new
      game.add_disc(1, 3)

    end
    it "returns true if a disc was successfully placed" do

    end
    it "returns false if the column is already full" do

    end
  end

  describe '#check_win' do
    it "returns true if there is a winning pattern" do

    end
    it "returns false if there isn't a winning pattern" do

    end
  end

  describe "#reset_board" do
    it "sets the @board variable to it's starting configuration" do
      game = Connect4Game.new
      expect(game.board).to eql(EMPTY_BOARD)
    end
  end

  describe "#print_board" do
    it "prints the current board's state to the console" do
      game = Connect4Game.new
      game.board = TEST_BOARD

    end
  end


end