class GamesController < ApplicationController

  before_action :set_game, only: [:show, :update]

  def index
    render json: Game.all
  end

  def create
    render json: Game.create(game_params), status: 201
  end

  def show
    render json: @game
  end

  def update
    render json: @game.update(game_params)
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
   @game = Game.find(params[:id])
  end
end
