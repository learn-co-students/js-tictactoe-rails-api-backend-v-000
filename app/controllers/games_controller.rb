class GamesController < ApplicationController
  # Add your GamesController code here
  def initialize()
    @state=[]
  end

  def create()
    Game.create()
    render '/home/index'
  end

  def index
  end
end
