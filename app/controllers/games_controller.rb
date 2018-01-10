class GamesController < ApplicationController
  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game, status: 201
    else
      puts @game.errors
    end
  end

  def show
    set_game
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  def update
    set_game
    @game.update(game_params)
    render json: @game, status: 201
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
