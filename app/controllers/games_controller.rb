class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create(state: params[:state])
    @game.save
    render plain: @game.state
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
    #binding.pry
  end

  def update
    #binding.pry
    @game = Game.find(params[:id])
    @game.state = params[:state]
    @game.save
    render plain: @game.state
    #binding.pry

  end

  def index
    @games = Game.all
    #binding.pry
    render json: @games
  end

end
