

class Board
  
  attr_reader :board
  
  def initialize
    @board = Array.new(8) {Array.new(8)}
    @null_piece = NullPiece
    self.board_setup
  end
  
  def self.board_setup
    @board.each_with_index do |row, idx1|
      row.each_with_index do |sqr, idx2|
        pos = [idx1, idx2]

        if idx1 == 0 || idx1 == 1 
          self.board[pos] = Piece.new(:white, self, pos)
        elsif idx1 == 6 || idx1 == 7 
          self.board[pos] = Piece.new(:black, self, pos????)
        else
          NullPiece
        end

    end
  end

  def [](pos)
    x,y = pos
    @board[x][y]
  end

  def []=(pos, val)
    x,y = pos
    @board[x][y] = val
  end

  def move_piece(color, start_pos, end_pos)
    piece = @board[start_pos]
    x, y = end_pos

    if color != piece.color || piece.nil?
      raise "Error, either wrong color or empty spot"
    else !x.between(0,7) || !y.between(0,7)
      raise "Error, position is off the board"
      #need to test if position already has one of our pieces
    end

  end

  def valid_pos?(pos)
  end_pos
  
  def add_piece(piece, pos)
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end


end


