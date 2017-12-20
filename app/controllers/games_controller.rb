class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :edit, :update]
    def new
      @game = Game.new
    end

    def create
      @game = Game.create(state: params[:state])
      render json: @game
    end

    def show
      render json: @game 
    end
   

    def index
      @games = Game.all
      render json: @games
    end


    def edit
    end

    def update
      @game.update(state: params[:state])
    redirect_to game_path(@game)
    end

    def destroy
    end

    private

    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:state)
    end
end
