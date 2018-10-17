class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def index
    games = Game.all
    render json: games
  end
  # #index returns a JSON:API-compliant, serialized object representing all of the saved games
  def create
    game = Game.create(game_params) # creates a new Game instance
    render json: game, status: 201 # status code 201 indicates game resource was successfully created
  end
  # #create properly serializes the state attribute as an array instead of as a string
  def show
    render json: @game
  end
  #show returns a JSON:API-compliant, serialized object representing the specified Game instance
  def update
    @game.update(game_params)
    render json: @game
  end
  #update persists changes to a previously-saved game's state (as players make additional moves)
  private

    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.permit(state: [])
    end
end
