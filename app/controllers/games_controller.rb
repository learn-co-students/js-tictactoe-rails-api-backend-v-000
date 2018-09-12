class GamesController < ApplicationController
  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def show
    find
    render json: @game
  end

  def update
    find
    @game.update(state: params[:state])
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def find
    @game = Game.find(params[:id])
  end

end
