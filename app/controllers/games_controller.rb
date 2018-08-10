class GamesController < ApplicationController

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 201
  end 

  def update
  end

  def index
  end

end
