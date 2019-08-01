class GamesController < ApplicationController
  # Add your GamesController code here
before_action :set_game, only: [:show, :update]

  def index
    render json: Game.all
  end

  def create
      @game = Game.create(game_params)
      #render json: @game.to_json(only: [:state, :id])
      render json: @game, status: 201
    end

    def show
      render json: @game
    end

    def update
      @game.update(game_params)
      render json: @game
    end

    private
    def game_params
      #As per lab's raised issue:
      params.permit(state: [])
    end

    def set_game
      @game = Game.find(params[:id])
    end
  end
