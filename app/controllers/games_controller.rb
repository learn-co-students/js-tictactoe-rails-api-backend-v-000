class GamesController < ApplicationController
  # Add your GamesController code here

  def create #POST — /games
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def show #GET — /games/:id
    @game = Game.find(params[:id])
    render json: @game
  end

  def update #PATCH — /games/:id
    @game = Game.find(params[:id])
    @game.state = params[:state]
    @game.save
    render json: @game
  end

  def index #GET — /games
    @games = Game.all
    render json: @games
  end

  private

    def game_params
      params.require(:state)
    end
end
