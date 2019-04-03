class GamesController < ApplicationController

	def create
    @game = Game.create(state: params[:state]) 
    render json: @game, status: 201
	end

	def show
		set_game
		render json: @game, status: 202
	end

	def update
		@game = set_game
		@game.update(state: params[:state])
		render json: @game, status: 203
	end

	def index
		@games = Game.all
		render json: @games, status: 204
	end

private
  def set_game
    @game = Game.find_by_id(params[:id])
  end

  def game_params
    params.require(:state)
  end

end
