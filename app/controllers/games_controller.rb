class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    games = Game.all
    render json: games
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.update(games_params)
    render json: @game
  end

  def create
    @game = Game.create(games_params)
    render json: @game, status: 201
  end

  private

  def games_params
    params.permit(state: [])
  end

end
