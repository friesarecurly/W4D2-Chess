require_relative "bishop"
require_relative "queen"
require_relative "rook"

module Slideable
    HORIZONTAL_DIRS = [ 
      [1, 0], #right  
      [-1, 0],  #left
      [0, 1],  #up
      [0, -1]  #down
    ]
    DIAGONAL_DIRS = [
      [1, 1], 
      [-1, -1], 
      [1, -1], 
      [ -1, -1]   
    ]  
   [0, 1][1,0] -> [1,1]
    [0, 1][1,0] -> 
    def horizontal_dirs
      HORIZONTAL_DIRS
    end
  
    def diagonal_dirs
      DIAGONAL_DIRS
    end
  
    def moves
      possible_moves = []
      
      dup_dir = move_dirs.dup
      until dup_dir.empty?
       dup_dirs.each do |dir|
        x, y = dir #1,1    
        sx, sy = self.pos #3,3
        new_x = sx + x
        new_y = sy + y
        next_position = [new_x, new_y] 
        case grow_unblocked_moves_in_dir(new_x,new_y)
        when 1
            dup_dir.delete(dir) 
        when 0
             
            possible_moves << next_position 
            dup_dir.delete(dir) 
             possible_moves << 
         end
    #   iterate over each of the dir in which a slideable piece can move  uese a ssub piece subclass move dirs method to get this info
    #   for each dir collect all possible moves in that dir and add them to your moves aarray
        # use the grow unblock move in dir hleper
  
        # retunr the final array of moves
    end
  
    private
    def move_dirs
    #   sublcass implements this  #roook, queen, 
      raise NotImplemented Error
        
    end
  
    def grow_unblocked_moves_in_dir(dx,dy)
        sx, sy = self.pos
        next_position = [sx + dx, sy + dy] 
        
        if !next_position[0].between?(0,7) || !next_position[1].between?(0,7)
            return  1   
        elsif board[next_position] != nil && self.color == board[next_position].color 
            return  1 
              elsif board[next_position] != nil && self.color != board [next_position].color 
            return 0
        elsif board[next_position] == nil 
            return -1
        end

    end
  
  end
  
  