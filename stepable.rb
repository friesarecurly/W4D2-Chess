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