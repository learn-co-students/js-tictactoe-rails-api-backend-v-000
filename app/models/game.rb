class Game < ActiveRecord::Base

  def board
    board = {}
    state_arr = self.state.split(',')
    state_arr.map! {|el| el.gsub('"', '')}
    state_arr.map! {|el| el.gsub('[', '')}
    state_arr.map! {|el| el.gsub(']', '').strip}
    state_arr.each_with_index do |value,index|
      board[index] = value 
    end
    board
  end

  def self.all_boards
    boards = {}
    games = Game.all 
    games.each_with_index do |game, index|
      board = game.board
      boards[index] = board
    end
    boards
  end

  def turns
   board = self.board
   board.reject {|k,v| board[k] == "" }.count
  end

end