class GamesController < ApplicationController
  # Add your GamesController code here
  
  def create
      @game = Game.create(state: params[:state])
      
    #   render json: @game, status: 201
    #   render "/home/index.html"
      render json: @game
  end 
  
  
  def index 
      @games = Game.all
    #   binding.pry
    #   render "/home/index.html"
      render json: @games
  end 
  
  def show 
      @game = Game.find(params[:id])
    #   render "/home/index.html"
      render json: @game
  end 
  
  def update 
      @game = Game.find(params[:id])
      @game.state = params[:state]
      @game.save
    #   render "/home/index.html"
      render json: @game
  end 

end
