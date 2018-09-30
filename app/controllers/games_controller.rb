class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games, status: 201
  end

  def create
    Game.create(game_params)
    redirect_to games_path
  end

  def show
    @game = Game.find(params[:id])
    render json: @game 
  end

  def update
  	@game = Game.find(params[:id])
  	@game.update(game_params)
  	render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end

# Add your GamesController code here

end
