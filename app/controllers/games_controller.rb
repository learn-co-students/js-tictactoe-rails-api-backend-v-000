class GamesController < ApplicationController
  # Add your GamesController code here
  ## POST /games 
  ## Expected Params: {"game": "[]" }
  def index
	all_games_list = Game.all 
	render json: all_games_list 
  end 
  def create
	  Game.create!(state: params[:state].to_json) 
  end

  def show
 	game_obj = Game.find(params[:id]) 
	render json: game_obj
  end

  def update
	Game.update(id: params[:id], state: params[:state].to_json) 
  end 

  

end
