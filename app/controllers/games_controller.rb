class GamesController < ApplicationController
  before_action :find_game, only: [:update, :show]

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  def show
    render json: @game
  end

  def update
    @game.update(game_params)
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def game_params
    params.permit(state: [])
  end

  def find_game
    @game = Game.find(params[:id])
  end

end
