class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :assign_game, only: [:show, :update]

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  def show
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  def update
    @game.update(game_params)
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end

  def assign_game
    @game = Game.find(params[:id])
  end
end
