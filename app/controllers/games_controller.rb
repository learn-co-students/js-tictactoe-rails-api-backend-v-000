class GamesController < ApplicationController
before_action :set_game, only: [:show, :update]

	def index 
		@games = Game.all
		@game = Game.new
	end

	def create
		@game = Game.create(game_params)
		render json: @game, status: 201
	end

	def show
		respond_to do |format|
			format.html
			format.json {render json: @game}
		end
	end

	def update
	end

private

	def set_game
		@game = Game.find(params[:id])
	end

	def product_params
    params.require(:game).permit(:state)
  	end

end
