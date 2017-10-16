class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def index
    @games = Game.all
    render json: @games, status: 200
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game, status: 201
    else
      render json: @game.errors.messages
    end
  end

  def show
    render json: @game, status: 200
  end

  def update
    @game.update(game_params)
    render json: @game, status: 200
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.permit(state: [])
  end
end
