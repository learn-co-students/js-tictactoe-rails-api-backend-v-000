class GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games
  end

  def create
    Game.create(state: ["X", "", "", "", "", "", "", "", ""])
    render :'home/index'
  end

  def show
    @game = Game.find_by(id:params[:id])
    render json: @game
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(state: params[:state])
    render :'home/index'
  end

end
