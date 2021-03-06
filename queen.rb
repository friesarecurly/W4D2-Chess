require_relative "Pieces"
require_relative "slideable"
class Rook < Piece
    
    def symbol
        "♕".colorize(color)

    end

    protected
    def move_dirs
        include slideable.horizontal_dirs
        include slideable.diagonal_dirs
    end

    Rook.pos