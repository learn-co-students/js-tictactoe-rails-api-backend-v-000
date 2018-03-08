class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    games = Game.all
    render json: games
  end

  def new
  end

  def create
    game = Game.create(state: params[:state])
    render json: game
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def edit
  end

  def update
    game = Game.find(params[:id]).update(state: params[:state])
    render json: game
  end

end
