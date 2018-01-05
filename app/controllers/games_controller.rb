class GamesController < ApplicationController
	
  def index
  	@games = Game.all
  	render json: @games
  end

  def create
  	@game = Game.create(game_params)
  	render json: @game
  end

  def show
  	@game = set_game
  	render json: @game
  end

  def update
  	@game = set_game
  	@game.update(game_params)
  	render json: @game
  end

  private

  def game_params
  	params.permit(state: [])
  end

  def set_game
  	Game.find(params[:id])
  end

end
