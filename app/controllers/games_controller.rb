class GamesController < ApplicationController
  # Add your GamesController code here
before_action :set_game, only: [:show, :update]

  def index
    @games = Game.all
    render json: @games
  end

  def show
      render json: @game
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def update
    @game.update(game_params)
    render json: @game, status: 201
  end

  private
  def game_params
     params.permit(state:[])
    # https://stackoverflow.com/questions/16549382/how-to-permit-an-array-with-strong-parameters
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
