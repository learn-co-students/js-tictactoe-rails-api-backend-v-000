class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.new(state: ["","","","","","","","",""])

  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
  end

  def index
  end

end
