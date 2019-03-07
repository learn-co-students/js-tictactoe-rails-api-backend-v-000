class GamesController < ApplicationController
  require 'pry'
  # Add your GamesController code here

  def index
    games = Game.all
    render json: games
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find_by(params[:id])
    render json: @game
  end

  def update
    @game = Game.find_by(params[:id])
    @game.update(game_params)
    render json: @game
  end


  private

  def game_params
    params.permit(state: [])
  end
end
