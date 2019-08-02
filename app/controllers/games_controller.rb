class GamesController < ApplicationController
  def create
    #binding.pry
    @game = Game.create(game_params)
    render json: @game, status: 200
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end


private
def game_params
  params.permit(state: [])
end
end
