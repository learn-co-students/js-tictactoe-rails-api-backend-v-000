class GamesController < ApplicationController
  # Add your GamesController code here
  
  def index
    @games = Game.all
    render json: @games, status: 201 #render json instead of html implicity
  end
  
  def new
    @game = Game.new
  end
  
  def create
    @game = Game.create(game_params)
    #Original
    #redirect_to games_path
    #Changed to:
    render json: @game, status: 201
  end
  
  def show
    @game = Game.find(params[:id])
      #respond_to do |format|
        #format.html { render :show }
        render json: @game, status: 201
    #end
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    #redirect_to game_path(@game)
    render json: @game, status: 204
  end

  private
  
  def game_params
    #params.require(:game).permit(:id, :state)
    params.permit(state: []) #sets state: an empty array
  end
end
