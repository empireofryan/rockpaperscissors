class ChoicesController < ApplicationController

  def create
    @game = Game.find params[:game_id]
    @choice = @game.choices.where(winner_id: nil, result: nil).last  || Choice.new(game_id: @game.id)
    if params[:player_one_id].present? && Player.where(id: params[:player_one_id]).exists?
      @choice.player_one_choice = params[:option]
    end 
   if params[:player_two_id].present?
      @player  = Player.find params[:player_two_id]
      @choice.player_two_choice = params[:option]
    end
    @choice.save
    respond_to do |format|
      format.js
    end
  end  

end