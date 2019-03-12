class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    game = Game.create()
    game.state = []
    render json: game.to_json()
  end

end
