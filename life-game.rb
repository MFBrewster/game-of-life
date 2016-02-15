class Cell
  attr_accessor :alive, :changing
  attr_reader :row, :col

  def initialize(row, col)
    @alive = [true, false].sample
    @changing = false
    @row = row
    @col = col
  end
end

class Board
  attr_reader :table, :size

 def initialize(size)
   @size = size
   @table = Array.new(@size**2)
 end

 def set_board
   counter = 0
   (@table.length).times do
     arr_col = counter % @size
     arr_row = counter / @size
     @table[counter] = Cell.new(arr_row, arr_col)
     counter += 1
   end
 end
end

class GameOfLife
  attr_reader :board
  attr_accessor :nei

  def initialize(size)
    @board = Board.new(size)
    @board.set_board
  end

  # def get_nei(row, col)
  #   [
  #
  #   ]
  # end

  def check_nei(row, col)

    live-nei = nei.each_with_object(counter = 0) do |neighbor|
      counter += 1 if neighbor.alive.true?
    end
    puts live-nei
  end
end
