class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.new
    @game.state = game_params
    @game.save
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.state = game_params
    @game.save
  end

  private
    def game_params
      params.require(:state)
    end
end
