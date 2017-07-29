class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    game = Game.create(state: params[:state])
    render status: 201, json: game
  end

  def update
    game = Game.find(params[:id])
    game.update(state: params[:state])
    render status: 201, json: game
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def index
    render json: Game.all
  end

  private
  def game_params
    params.permit(:state)
  end

end
