class HomeController < ApplicationController
  def index
    @game = Game.create
  end
end
