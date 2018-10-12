class GamesController < ApplicationController
  # Add your GamesController code here
  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    render json: @product, status: 201
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
     format.html { render :show }
     format.json { render json: @game }
   end
  end

  def edit
  end

  def update
  end

  private

  def game_params
     params.require(:game).permit(:state, :created_at, :updated_at)
  end

end
