class GamesController < ApplicationController
    def index
      @games = Game.all 

    end 

    def show
      @game = Game.find(params[:id])

    end

    def create
      @game = Game.create(game_params)

    end

    def update 
      @game = Game.find(params[:id])
      @game.update(game_params)

    end 

    private 

    def game_params
      params.permit(state: [])
    end
end
