class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    game = Game.create({state: params[:state]})
    render json: game
  end

  def show
    game = Game.find_by(id: params[:id])
    if game
      render json: game
    else
      redirect_to :index
    end
  end
end
