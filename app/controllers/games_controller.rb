class GamesController < ApplicationController
  before_action :get_game, only: [:show, :update]

  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def show

  end

  def update

  end

  def index

  end

  private

  def game_params
    params.permit(state: [])
  end

  def get_game
    game = Game.find(params[:id])
  end

end



