class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    select_game
    render json: @game
  end

  def update
    select_game.update(game_params)
  end

  def index
    @games = Game.all
    render json: @games, status: 201
  end

  private

  def game_params
    params.permit(state:[])
  end

  def select_game
    @game = Game.find(params[:id])
  end

end
