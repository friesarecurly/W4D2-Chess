class Pawn < Piece

    def symbol
        "♙".colorize(colorize)
    end

    def moves

    end
    protected

    def at_start_row
        if self.color == :white && self.pos[0] == 1
          true
        elsif self.color == :black && self.pos[0] == 6
            true 
        else
            false
        end  
    end

    def foward_dir
        if self.color == :white
            1
        else
            -1
        end
    end

    def foward_steps
        if self.at_start_row
            [foward_dir,foward_dir * 2] 
        else
            [foward_dir]
        end
    end

    def side_attacks
        # if white [+1, +1] or black
    end

    


end