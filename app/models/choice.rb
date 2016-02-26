class Choice < ActiveRecord::Base

  validates :game_id, presence: true
  belongs_to :game
  belongs_to :winner, class_name: 'Player'
  before_update :set_winner_id_and_result



private
    CHOICES = {
      rock: {
        rock: {status: :draw, winner_id: nil}, 
        paper: {status: :finished, winner_id: :player_two}, 
        scissors: {status: :finished, winner_id: :player_one}
      }, 
      paper: {
        rock: {status: :finished, winner_id: :player_one}, 
        paper: {status: :draw, winner_id: nil}, 
        scissors: {status: :finished, winner_id: :player_two}
      }, 
      scissors: {
        rock: {status: :finished, winner_id: :player_two}, 
        paper: {status: :finished, winner_id: :player_one}, 
        scissors: {status: :draw, winner_id: nil}
      }
    }

    def rockpaperscissors(player_one_throw, player_two_throw)
      CHOICES[player_one_throw.to_sym][player_two_throw.to_sym]
    end

   def set_winner_id_and_result
     if !player_one_choice.nil? && !player_two_choice.nil?
       play_game = rockpaperscissors(player_one_choice, player_two_choice)
       self.result = play_game[:status]
      
       if play_game[:winner_id] != nil
         self.winner_id = (play_game[:winner_id] == :player_two ? self.game.player_two_id : self.game.player_one_id)
       end
     end
   end
end
