class GamesController < ApplicationController

   def show
    @game = Game.find params[:id]
   end

  def create
    player_one = Player.find_or_create_by(name: params[:player_one_name])
    player_two = Player.find_or_create_by(name: params[:player_two_name])
    game = Game.create(player_one_id: player_one.id, player_two_id: player_two.id)
    if game.persisted?
      redirect_to game_path(game)
    else
      redirect_to :back
    end  
  end
end