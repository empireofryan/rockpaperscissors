require "rails_helper"

RSpec.describe Game, :type => :model do
  describe "validations" do
    # new_game_one = Game.create

    # expect(new_game_one.valid?).to eq(false)

    # @player_one = Player.create(name: 'Mike')
    # @player_two = Player.create(name: 'Ryan')
    # @game = Game.create(player_one_id: @player_one.id, player_two_id: @player_two.id)
    
    # expect(@game.valid?).to eq(true)

    it { should validate_presence_of(:player_one_id)}
    it { should validate_presence_of(:player_two_id) }
  end

  describe "relations" do
    it { should belong_to(:player_one).class_name('Player')  }
    it { should belong_to(:player_two).class_name('Player')  }
    it { should have_many(:choices) }
  end
end