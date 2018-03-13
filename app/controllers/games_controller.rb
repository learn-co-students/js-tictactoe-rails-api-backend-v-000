class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games, each_serializer: GameSerializer
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      render json: @game
    end
  end
  
  def create
    @game = Game.create(game_params)
    @game.save
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  private

  def game_params
    {state: params.require(:state)}
  end
end
