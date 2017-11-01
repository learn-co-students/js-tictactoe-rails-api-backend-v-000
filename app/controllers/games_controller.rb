class GamesController < ApplicationController
  # Add your GamesController code here
  def index
  	@games = Game.all
  	render json: @games
  end

  def create
  	@game = Game.create(state: params["state"])
  	render json: @game, status:201
  end

  def show
  	findGame
  	render json: @game
  end

  def update
  	findGame
  	@game.update(state: params["state"])
  	render json: @game
  end

  private
  	def findGame
  		@game = Game.find(params[:id])
  	end

end
