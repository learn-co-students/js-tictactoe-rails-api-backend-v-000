class GamesController < ApplicationController
  def index

  end

  def show

  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def update

  end

  private

  def game_params
    params.permit(state: [])
  end
end
