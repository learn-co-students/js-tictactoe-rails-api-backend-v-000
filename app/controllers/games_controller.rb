class GamesController < ApplicationController
    # Add your GamesController code here
    def games
    end
    def create
        game = Game.create(state: params[:state])
        render json: game, status: 201
    end
    def show
    end
    def update
    end 
end
