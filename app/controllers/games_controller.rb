class GamesController < ApplicationController
  # Add your GamesController code here
  def new
  	@game = Game.new
  end

  def create
  	# binding.pry	
  	@game = Game.create("state" => params[:state])
  	render json: @game, status: 201
  end

  def show
  	@game = Game.find(params[:id])
  	render json: @game, status: 201
  end

  def update
  	@game = Game.find(params[:id])
  	@game.state = params[:state]
  	@game.save
  	redirect_to game_path
  end

  def index
  	@games = Game.all
  	render json: @games
  end

  # private

  # def game_params
  # 	params.require(:games).permit(:state)
  # end
end
