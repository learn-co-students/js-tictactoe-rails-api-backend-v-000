require 'pry'
class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    #binding.pry
    @game = Game.create(state: params[:state]).to_json
    redirect_to games_path
    #binding.pry
  end

  def show
    @game = Game.find(params[:id])
    render json: @game

  end

  def update
    #binding.pry
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
    redirect_to games_path
  end

  def index
    @games = Game.all

    render json: @games

  end

end
