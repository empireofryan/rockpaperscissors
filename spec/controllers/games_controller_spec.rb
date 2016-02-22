require "rails_helper"

RSpec.describe GamesController, :type => :controller do
  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
           @player_one = Player.create(name: 'Mike')
    @player_two = Player.create(name: 'Ryan')
    @game = Game.create(player_one_id: @player_one.id, player_two_id: @player_two.id)
      get :show, id: @game.id
      expect(response).to have_http_status(200)
    end

    it "renders the new template" do
           @player_one = Player.create(name: 'Mike')
    @player_two = Player.create(name: 'Ryan')
    @game = Game.create(player_one_id: @player_one.id, player_two_id: @player_two.id)
      get :show, id: @game.id
      expect(response).to render_template("show")
    end

    it "loads a game in @game" do
      @player_one = Player.create(name: 'Mike')
    @player_two = Player.create(name: 'Ryan')
    @game = Game.create(player_one_id: @player_one.id, player_two_id: @player_two.id)
      get :show, id: @game.id

      expect(assigns(:game)).to eq(@game)
    end
  end
end