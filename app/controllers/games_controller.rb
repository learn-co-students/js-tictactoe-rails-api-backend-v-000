class GamesController < ApplicationController
before_action :set_game, only: [:show, :update]

	def index 
		@games = Game.all
	end

	def create

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

end
