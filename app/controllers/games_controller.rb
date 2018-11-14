class GamesController < ApplicationController

    def new
      @game = Game.new
    end

    def create
      @game= Game.create(state: params[:state])
      render json: @game, status: 201
    end

    def show
      @game = Game.find(params[:id])
      render json: @game
    end

    def update
      @game = Game.find(params[:id])
      @game.update(state: params[:state])
      render json: @game, status: 202
    end

    def index
      @games = Game.all
      render json: @games, status: 203
    end

end

#@product = Product.find(params[:id])
#respond_to do |format|
#  format.html { render :show }
#  format.json { render json: @product }
#end
