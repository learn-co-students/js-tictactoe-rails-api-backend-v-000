
def games
  game1 = Game.create(state: ['X', '', 'X', 'O', 'O', 'X', 'O', 'X', 'O'])
  game2 = Game.create(state: ['X', 'O', '', 'O', 'O', 'X', '', '', 'O'])
  game3 = Game.create(state: ['X', 'O', 'X', '', '', '', '', 'X', 'O'])
end

games