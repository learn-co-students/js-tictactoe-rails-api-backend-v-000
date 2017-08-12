class GamesController < ApplicationController

def create
    @game = Game.create(games_params)
    render json: game, status: 201
end

private

def games_params
    params.permit(:state)
end
end
