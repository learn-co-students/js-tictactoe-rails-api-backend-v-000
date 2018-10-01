class GamesController < ApplicationController
  # Add your GamesController code here
  
  def index
    #binding.pry
    @games = Game.all
    render json: @games #.as_json(:except => [:created_at, :updated_at]), status: 201
  end
  
  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end
  
  def create
    #binding.pry
    @game = Game.create(state: params['state']) #['game']['state'])
    render json: @game, root: true
  end
  
  def update
    #binding.pry
        @game = Game.find(params['id'])
        @game.update(state: params['state'])
        render json: @game
  end
  
end
