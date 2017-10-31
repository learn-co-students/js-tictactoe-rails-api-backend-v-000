class Game < ActiveRecord::Base

  def self.display_board(game)
    board = {}
    state_arr = game.state.split(',')
    binding.pry 

    state_arr.each_with_index do |value,index|
      board[index] = value 
    end

    board
  end

end