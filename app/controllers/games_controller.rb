class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games, status: 200
  end

  def create
    game = Game.new(game_params)
    if game.save
      render json: game, status: 201
    else
      render json: game.errors.messages, only: [:state]
    end
  end

  def show
    game = Game.find_by(id:params[:id])
    render json: game, status: 200
  end

  def update
    game = Game.find_by(id:params[:id])
    if game.update(game_params)
      render json: game, status: 200
    else
      render json: game.errors.messages, only: [:state]
    end
  end

  private
    def game_params
      params.permit(state:[])
    end
end
