class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    game = Game.new(state: ["X", "", "", "", "", "", "", "", ""])
    game.save
    render json: game, status: 201
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def update
    game = Game.find(params[:id])
    game.state = params[:state]
    game.save
    render json: game, status: 201
  end

  def index
    games = Game.all
    render json: games
  end

end
