require "rails_helper"

RSpec.describe ChoicesController, :type => :controller do
  describe "POST #create" do
    it "responds successfully with an HTTP 200 status code" do
         @player_one = Player.create(name: 'Mike')
    @player_two = Player.create(name: 'Ryan')
    @game = Game.create(player_one_id: @player_one.id, player_two_id: @player_two.id)
      post :create, game_id: @game.id, player_one_id: @player_one.id, option: 'rock', format: 'js'
      expect(response).to have_http_status(200)
    end

    it "renders the new template" do
      @player_one = Player.create(name: 'Mike')
    @player_two = Player.create(name: 'Ryan')
    @game = Game.create(player_one_id: @player_one.id, player_two_id: @player_two.id)
      post :create, game_id: @game.id, player_one_id: @player_one.id, option: 'rock', format: 'js'
      expect(response).to render_template("create")
    end

    it "loads a game in @game" do
      @player_one = Player.create(name: 'Mike')
    @player_two = Player.create(name: 'Ryan')
    @game = Game.create(player_one_id: @player_one.id, player_two_id: @player_two.id)
      post :create, game_id: @game.id, player_one_id: @player_one.id, option: 'rock', format: 'js'

      expect(assigns(:choice)).to be_valid
    end
  end
end