class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(state: ["", "", "", "", "", "", "", "", ""])
    render json: @game, status: 201
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
     format.html { render :show }
     format.json { render json: @game, status: 200 }
   end
  end

  def update
    @game = Game.find(params[:id])
    @game.update(:state)
    @game.save
    respond_to do |format|
     format.html { render :show }
     format.json { render json: @game, status: 200 }
   end
  end

  private

  def game_params
     params.require(:game).permit(:state, :created_at, :updated_at)
  end

end
