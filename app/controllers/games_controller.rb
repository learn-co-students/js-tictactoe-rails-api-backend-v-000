class GamesController < ApplicationController
  # Add your GamesController code here
  def index 
    @games = Game.all
  end

  def new
    @game = Game.new
  end
    
  def create
    @game = Game.create(id: params[:id])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { redner json: @game }
    end
  end

  def update 

  end

  # def game_params
  #   params.require(:game).permit(:state, :id)
  # end
end
