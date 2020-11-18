
class Piece
  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
  end

  def empty?
  end

  def valid_moves
  end

  def pos=(val)
  end

  def Symbol
  end

  private
  def move_into_check?(end_pos)
  end

end
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X],
 [:X, :X, :X, :X, :X, :X, :X, :X]

module Slideable
  HORIZONTAL_DIRS = [ 
    [:dx, :dy], # left
    [:dx, :dy], # right
    [:dx, :dy], # up
    [:dx, :dy]  # down (vert)
  DIAGONAL_DIRS = [
    [:dx, :dy], #up + left
    [:dx, :dy], #up + right
    [:dx, :dy], #down + left
    [:dx, :dy], #down + right
  ]

  def horizontal_dirs
    getter for HORIZONTAL_DIRS
  end

  def diagonal_dirs
    getter for DIAGONAL_DIRS
  end

  def moves
    create arary to collect moves
    iterate over each of the dir in which a slideable piece can movessub piece subclass move dirs method to get this info
    for each dir collect all possible moves in that dir and add them to your moves aarray
      use the grow unblock move in dir hleper

      retunr the final array of moves
  end

  private
  def move_dirs
    sublcass implements thisraise NotImplemented Error
  end

  def grow_unblocked_moves_in_dir(dx,dy)
  end

end


module Stepable

  def moves
    create array to collect movessub

    iterate through each of the pieces possible move_diffs
    for each move_diff, increment the pieces position to generate a new pos
      add the new position to the moves array if it is:
        on the baord and empty
        or on the board and contains a piece of the opposite color

    return final array of moves
  end

  private
  def move_diffs
  end

end



module Singleton

end