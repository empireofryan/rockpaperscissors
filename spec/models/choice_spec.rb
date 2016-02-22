require "rails_helper"

RSpec.describe Choice, :type => :model do
  describe "validations" do
    it { should validate_presence_of(:game_id)}
  end

  describe "relations" do
    it { should belong_to(:game)  }
    it { should belong_to(:winner).class_name('Player')  }
  end

  describe "game logic" do
    let(:player_one) {Player.create(name: 'Mike')}
    let(:player_two) {Player.create(name: 'Ryan')}
    let(:game) {Game.create(player_one_id: player_one.id, player_two_id: player_two.id)}
    it "should be a draw" do
      choice = Choice.new(game_id: game.id, player_one_choice: 'rock', player_two_choice: 'rock')
      choice.save
      expect(choice.result).to eq('draw')
      expect(choice.winner_id).to eq(nil)
    end  
    it "should have a winner" do
      choice = Choice.new(game_id: game.id, player_one_choice: 'rock', player_two_choice: 'scissors')
      choice.save
      expect(choice.result).to eq('finished')
      expect(choice.winner_id).to eq(player_one.id)
    end  
  end   
end