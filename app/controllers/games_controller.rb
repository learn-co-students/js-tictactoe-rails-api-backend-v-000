class GamesController < ApplicationController
  # Add your GamesController code here

  def create #5
    #binding.pry
    @game = Game.create(game_params)
    @game.save
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @game.to_json(only: [:id, :state])}
    end
  end

  def update
  end

  def index
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
