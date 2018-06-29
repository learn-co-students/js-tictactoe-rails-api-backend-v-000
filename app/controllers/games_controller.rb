class GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games, status: 200
  end


  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end


  def update
    @game = Game.find_by(id: params[:id])
    @game.update(game_params)
    render json: @game
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game, status: 200
  end

  private

  def game_params
    params.permit(state: [])
  end

end
