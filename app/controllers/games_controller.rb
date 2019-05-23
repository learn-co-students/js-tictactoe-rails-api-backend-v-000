class GamesController < ApplicationController
  # Add your GamesController code here
  def index #GET /games
    games = Game.all 
    render json:games 
  end
end
