class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    render json: Game.all
  end

  def create
    @game = Game.create(state: params[:state])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

end
