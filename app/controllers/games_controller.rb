class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update, :delete]
  before_action :set_json_game, only: [:show, :delete]

  def index
    @games = Game.all
    render json: @games
  end

  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def show
  end

  def update
    @game.update(game_params)
    render json: @game
  end

  def delete
  end

  private
  def set_json_game
    render json: @game
  end
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.permit(state: [])
  end
end
