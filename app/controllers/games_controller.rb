class GamesController < ApplicationController

  def index #GET /games
    @games = Game.all
    render json: @games
  end

  def create #POST /games
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def show #GET /games/:id
    @game = Game.find(params[:id])
    render json: @game
  end

  def update #PATCH /games/:id
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
    render json: @game
  end

end
