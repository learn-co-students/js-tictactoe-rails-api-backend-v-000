class GamesController < ApplicationController

	def show
		@game = Game.find(params[:id])
		render json: @game
	end

	def index
		@games = Game.all
		render json: @games
	end

	def create
		@game = Game.create(state: params["state"])
		if @game.save
			render json: @game
		end
	end

	def update
		@game = Game.find(params[:id])
		@game.update(state: params[:state])
		if @game.save
			render json: @game
		end
	end

	# private

	# def game_params
	# 	params.require().permit()
	# end

end
