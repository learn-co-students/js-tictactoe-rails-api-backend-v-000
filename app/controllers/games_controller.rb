class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)

    render json: @game, status: 201
  end


  private
  def game_params
    # from ruby on rails api for #permit
    # You may declare that the parameter should be an array of permitted scalars by mapping it to an empty array:
    params.permit(state: [])
  end
end
