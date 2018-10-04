class GamesController < ApplicationController

  def show
    game = Game.find_by(id: params[:id])
    if game
      render json: game
    else
      redirect_to :index
    end
  end

  def create
    game = Game.create({state: params[:state]})
    render json: game
  end

  def update
    game = Game.find_by(id: params[:id])
    if game
      game.update({state: params[:state]})
      render json: game
    else
      redirect_to :index
    end
  end
end
