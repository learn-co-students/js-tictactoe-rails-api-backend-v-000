class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(state: game_params)
    render json: @game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update_attributes(state: game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  private

  def game_params
    params.require(:state)
  end

end
