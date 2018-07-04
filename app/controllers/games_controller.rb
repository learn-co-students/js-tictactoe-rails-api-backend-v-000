class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    games = Game.all
    result = {
      "data" => [

        ],
        "jsonapi" => {
            "version" => "1.0"
          }
        }
        
    games.each do |game|
      result["data"]<< { "id" => game.id.to_s, "type" => params[:controller], "attributes" => {"state" => game.state} }
    end
    render json: result, status: 201
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end

  def show
    @game = Game.find(params[:id])
    result = {
      "data" => {
        "id" => @game.id.to_s,
        "type" => params[:controller],
        "attributes" => {
          "state" => @game.state
        }
      },
      "jsonapi" => {
        "version" => "1.0"
      }
    }
    #binding.pry
    render json: result
  end

  private

  def game_params
    params.permit(state: [])
  end

end
