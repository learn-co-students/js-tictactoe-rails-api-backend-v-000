
def games
  gameStates = [["X", "O", "X", "", "O", "O", "", "", "X"], 
  ["X", "O", "", "", "O", "", "X", "", "X"],
  ["", "O", "X", "", "X", "O", "", "", "X"]]
  
  gameStates.each do |gs|
    Game.create(state: gs)
  end
end

games