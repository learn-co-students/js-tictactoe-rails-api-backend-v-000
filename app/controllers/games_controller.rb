class GamesController < ApplicationController
  before_action :set_game, only: [:show]

  def create
    @game = Game.new(game_params)
    @game.save
    render json: @game.to_json
  end

  def show
    render json: @game.to_json
  end

  private

  def game_params
    {:state => params[:state]}
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
