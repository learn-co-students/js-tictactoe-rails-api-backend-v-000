class GamesController < ApplicationController
  
  def index 
    @games = Game.all
    render json: @games
  end
  
  def create 
    Game.create(game_params)
  end 

  def show
    @game = Game.find(params[:id])
    render json: @game
  end 

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to game_path(@game)
  end


  private

  def game_params
    params.permit(state: [])
  end

end
