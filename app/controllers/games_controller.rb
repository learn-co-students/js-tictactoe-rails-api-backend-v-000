class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def show
    render json: get_game, status: 200
  end

  def create
     @game = Game.create(state: params[:state])
     render json: @game, status: 201
  end

  def update
    @game = get_game.update(state: params[:state])
    render json: @game, status: 201
  end

  private

  def get_game
    Game.find(params[:id])
  end
end
