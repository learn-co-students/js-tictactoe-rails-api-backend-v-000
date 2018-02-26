class GamesController < ApplicationController
  
  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game
  end

  def edit

  end

  def update
    @game = Game.find_by(id: params[:id]).update(state: params[:state])
    render json: @game    
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def new

  end

  def destroy

  end
  
end
