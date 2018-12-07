class GamesController < ApplicationController
  # Add your GamesController code here
  def index 
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new
    redner 'home/test_index'
  end
    
  def create
    @game = Game.new(state: params["state"])
    if @game.save
      render json: @game, status: 201
    else
      redirect_to "new"
    end
  end


  def show
    @game = Game.find(params[:id])
    # respond_to do |format|
      # format.html { render :show }
      render json: @game
  end

  def update 
    @game = Game.find(params["id"])
    @game.update(state: params["state"])
    render json: @game
  end

  # def game_params
  #   params.require(:game).permit(:state, :id)
  # end
end
