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
    if @game.update_attributes(game_params)
        render json: @game, status: 201
    end
  end

  private
  def game_params
    params.permit(state: [])
  end



end
