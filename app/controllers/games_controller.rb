class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def create #post /games
    @game = Game.create(game_params)
    render json: @game
  end

  def show # GET /games/:id
    render json: @game
  end

  def update # PATCH /games/:id
    @game.update(game_params)
    render json: @game
  end

  def index # GET /games
    @games = Game.all
    render json: @games
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
  @game = Game.find(params[:id])

  end
end
