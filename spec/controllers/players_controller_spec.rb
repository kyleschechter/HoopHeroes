require 'rails_helper'

RSpec.describe PlayersController, type: :controller do
  describe "GET #index" do
    it "renders the index page for all the players" do
      get :index

      expect(response).to render_template(:index)
    end
  end
end