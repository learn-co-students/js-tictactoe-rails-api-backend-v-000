class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def create
    @game = Game.create(state: game_params)
    render json: @game if @game.save
  end

  def show
    render json: @game
  end

  def update
    @game.update(state: game_params)
    render json: @game if @game.save
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def game_params
    params.require(:state)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
