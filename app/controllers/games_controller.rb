class GamesController < ApplicationController
  before_action :set_game, only: %i[show update]

  def index
    render json: Game.all
  end

  def create
    @game = Game.create(state: game_params)
    render json: @game
  end

  def show
    render json: @game
  end

  def update
    @game.update(state: game_params)
    render json: @game
  end

  private

  def game_params
    params.require(:state)
  end

  def set_game
    @game = Game.find_by(id: params[:id])
  end

end
