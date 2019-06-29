class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |f|
      format.html { render :show }
      format.json { render json: @game }
    end
  end

  def update
    @game = Game.find(params[:id])
  end
  
end
