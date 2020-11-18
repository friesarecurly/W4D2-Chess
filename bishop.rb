require_relative "Pieces"
require_relative "slideable"
class Bishop < Piece
    
    def symbol
        "♗".colorize(color)

    end

    protected
    def move_dirs
        include slideable.diagonal_dirs
        
    end


end

