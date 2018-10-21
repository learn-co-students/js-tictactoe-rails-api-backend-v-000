class GamesController < ApplicationController
  # Add your GamesController code here
  # render 'home/index'

  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  def show
    @game = Game.find_by_id(params[:id])
    render json: @game
  end

  def update
    @game = Game.find_by_id(params[:id])
    @game.update(game_params)
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end

end
