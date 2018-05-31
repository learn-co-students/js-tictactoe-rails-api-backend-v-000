class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    Game.create(game_params)
    
  end

  def show
  end

  def update
  end

  def index
  end

  private
  def game_params
    params.require(:game).permit(:state)
  end

end
