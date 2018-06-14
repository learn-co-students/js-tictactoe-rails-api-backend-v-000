class GamesController < ApplicationController

  def create 
    game = Game.create(state: params[:state])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @game.to_json }
    end
  end

  def show
    @game = Game.find_by(id: params[:id])

    render json: @game
  end

  def update 
    @game = Game.find_by(id: params[:id])
    @game.update(state: params[:state])
  end

  def index 
    @games = Game.all
    render json: @games
  end


end
