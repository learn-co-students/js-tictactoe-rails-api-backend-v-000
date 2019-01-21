class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 201 
  end

  private

  def game_params
    { state: params.require(:state) }
  end
end
