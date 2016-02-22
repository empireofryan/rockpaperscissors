class GamesController < ApplicationController

   def index
   end 

   def show
    @game = Game.find params[:id]
   end


  def create
    @player_one = Player.create(name: params[:player_one_name])
    @player_two = Player.create(name: params[:player_two_name])
    @game = Game.create(player_one_id: @player_one.id, player_two_id: @player_two.id)
    redirect_to game_path(@game)
  end
end