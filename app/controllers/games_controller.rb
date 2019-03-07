class GamesController < ApplicationController
  # Add your GamesController code here
    def index
      @games = Game.all
      render json: @games
    end

    def show
      @game = Game.find(params[:id])
      render json: @game
      # respond_to do |format|
      #   format.html { render :show }
      #   format.json { render json: @game}
      # end
    end

    def new
      @game = Game.new
    end

    def create
      @game = Game.create(game_params)
      render json: @game, status: 201
    end

    def edit
     @game = Game.find(params[:id])

    end

    def update
      @game = Game.find(params[:id])

      @game.update(game_params)
      # redirect_to game_path(@game)
      render json: @game
    end

    # def game_data
    #   game = Game.find(params[:id])
    #   #render json: gameSerializer.serialize(game)
    #   render json: Game.to_json(only: [:title, :description, :id],
    #                             include: [author: { only: [:name]}])
    # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.permit(state: [])
    end
  end
