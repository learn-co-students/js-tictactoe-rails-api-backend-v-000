class HomeController < ApplicationController
  def index
    @game = Game.find(params[:id])
  end
end
