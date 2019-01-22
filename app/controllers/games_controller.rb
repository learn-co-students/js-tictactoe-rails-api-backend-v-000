class GamesController < ApplicationController

  def index	
  	render json: Game.all
  end

  def create
  	@game = Game.create(state: params[:state])
  	render json: @game, status: 201
  end

  def show	
  	@game = Game.find(params[:id])
    render json: @game
  end

  def update
  	@game = Game.find(params[:id])
    @game.update(state: params[:state])
  	render json: @game, status: 200	
  end

 

end
