class GamesController < ApplicationController
  before_action :load_game, only: [:show, :update]
  def index
    games = Game.all
    render json: games
  end

  def create
    game = Game.new(game_params)
    if game.save
      render json: game, status: 201
    end
  end

  def update
    if @game.update(game_params)
      render json: @game
    end
  end

  def show
    render json: @game
  end

  private
  def game_params
    params.permit(state:[])
  end

  def load_game
    @game = Game.find(params[:id])
  end
end
