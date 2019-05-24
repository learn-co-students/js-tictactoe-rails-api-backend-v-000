class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create(games_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    @game.update_attributes(games_params)
    render json: @game, status: 200
  end

  def index
    @games = Game.all
    render json: @games
  end

end

private

def games_params
  params.permit(state:[])
end
