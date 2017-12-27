class GamesController < ApplicationController
  def create
    @game = Game.new(state: params[:state])
    if @game.save
      render json: @game, status: :created
    else
      render nothing: true, status: :bad_request
    end
  end
  
  def show
    @game = Game.find(params[:id])
    render json: @game
  end
  
  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
    render json: @game
  end
  
  def index
    @games = Game.all
    render json: @games
  end
end
