require "rails_helper"

RSpec.describe Player, :type => :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "relations" do
    #it { should have_many(:games).source('player_one') }
    #it { should have_many(:games).with_foreign_key('player_two_id') }
  end
end