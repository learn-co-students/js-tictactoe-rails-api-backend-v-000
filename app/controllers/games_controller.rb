# Code your GamesController here
class GamesController < ApplicationController
  def create
    @game = Game.create(state: params[:state]);
    render json: @game
  end

  def show
    render json: Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
    render json: @game
  end

  def index
    render json: Game.all
  end

end
