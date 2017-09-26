class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    set_game
    render json: @game
  end

  def edit
  end

  def update
    set_game
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.permit(state: [])
  end
end
