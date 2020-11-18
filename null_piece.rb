require_relative "singleton"

class NullPiece < Piece
  include Singleton
  def initialize
    
  end

  def moves

  end

  def symbol
    :X
  end


end
