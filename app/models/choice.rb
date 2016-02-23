class Choice < ActiveRecord::Base

  validates :game_id, presence: true
  belongs_to :game
  belongs_to :winner, class_name: 'Player'
  before_save :set_winner_id_and_result

private
    def set_winner_id_and_result
      if (self.player_one_choice == "rock" && self.player_two_choice == "scissors") || 
        (self.player_one_choice == "scissors" && self.player_two_choice == "paper") ||
        (self.player_one_choice == "paper" && self.player_two_choice == "rock")
        self.winner_id = game.player_one_id
        self.result = "finished"
      elsif (self.player_one_choice == "rock" && self.player_two_choice == "paper") ||
        (self.player_one_choice == "paper" && self.player_two_choice == "scissors") ||
        (self.player_one_choice == "scissors" && self.player_two_choice == "rock")
        self.winner_id = game.player_two_id
        self.result = "finished"
      elsif self.player_one_choice == self.player_two_choice
        self.winner_id = nil
        self.result = "draw"
      end  
    end  
end
