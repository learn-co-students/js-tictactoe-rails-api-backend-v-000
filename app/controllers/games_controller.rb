class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(state: params[:state])
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

end
