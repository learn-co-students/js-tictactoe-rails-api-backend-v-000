class GamesController < ApplicationController
  # Add your GamesController code here



  def update
    @game = Game.find(params[:id])
    @game.state = params[:state]
    @game.save
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 201
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new
    @game.state = params[:state]
    @game.save
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    #respond_to do |format|
      #format.html { render :show }
      #format.json { render json: @game }
      render json: @game, status: 201
    #end
  end

private
  def game_params
    params.require(:state)
  end

end
