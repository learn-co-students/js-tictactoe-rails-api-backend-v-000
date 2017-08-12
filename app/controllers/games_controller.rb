class GamesController < ApplicationController

    def index
        @games = Game.all
        render json: @game
    end

    def create
        @game = Game.create(game_params)
        render json: @game, status: 201
    end

    def show
        # @game = Game.find(params[:id])
        # respond_to do |f|
        #   f.html { render :nothing => true }
        #   f.json { render :json => {:message => "Success"} }
        # end
        render json: @game
    end

    def update
        render json: @game
    end



    private

    def game_params
        params.permit(state: [])
    end
end
