class GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games, status: 200
  end
  
  def create
    game = Game.create(games_params)
    render json: game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    @game.update(games_params)
    if @game.save
      render json: @game, status: 200
    end
  end


  private
  def games_params
    params.permit(:state => [])
  end
end
