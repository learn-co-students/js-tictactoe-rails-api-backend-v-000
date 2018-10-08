class GamesController < ApplicationController
  # Add your GamesController code here

  def index
  end

  def new
    @game = Game.new
   end

  def create
    @game = Game.create(game_params)
    redirect_to games_path
  end

  def show

  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
