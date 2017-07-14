class GamesController < ActionController::Base
   before_action :load_game, only: [:show, :update]

   def index
     @games = Game.all
     render json: @games
   end

   def update
     @game.update(game_params)
     render json: @game
   end

   def create
     Game.create(game_params)
     render json: @game, status: 201
   end

   def show
     render json: @game
   end

   private

     def game_params
       params.permit(state: [])
     end

     def load_game
       @game = Game.find(params[:id])
     end
end
