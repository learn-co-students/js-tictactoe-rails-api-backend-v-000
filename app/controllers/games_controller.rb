class GamesController < ApplicationController
  # Add your GamesController code here

  def create
  	@game = Game.create(state: params[:state])
  	render json: @game.to_json
  end

  def index
    @games = Game.all
    render json: @games
  end

  def update
  	@game = Game.find(params[:id])
  	@game.state = params[:state]
  	@game.save
    render json: @game.to_json
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

end
