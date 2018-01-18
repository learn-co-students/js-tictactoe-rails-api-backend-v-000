class GamesController < ApplicationController
  
  def create 
    @game = Game.new 
    @game.state = params[:state] 
    @game.save
    render json: @game, status: 201
  end 
  
  def show 
    @game = Game.find(params[:id]) 
    render json: @game
  end 

  def update 
    @game = Game.find(params[:id]) 
    @game.update(state: params[:state])
    render json: @game
  end  
  
  def index  
     @games = Game.all 
     render json: @games
  end 
  

end
