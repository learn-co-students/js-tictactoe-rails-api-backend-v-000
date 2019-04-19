class GamesController < ApplicationController
  # Add your GamesController code here
  #
  def create
    @game = Game.new(state: params[:state]);
    @game.save
    render json: @game
  end

  def show
    @game = Game.find(params[:id]);
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.state = params[:state]
    @game.save
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

end
