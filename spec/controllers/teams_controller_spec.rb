require 'rails_helper'

RSpec.describe TeamsController, type: :controller do
  describe "GET #index" do
    it "renders the index page for all the teams" do
      user1 = User.create!(email: "user1@user.com", password: "userrr1")
      team1 = Team.create!(user_id: user1.id, name: "Team 1", slogan: "One", image_url: "team.jpg")

      user2 = User.create!(email: "user2@user.com", password: "userrr2")
      team2 = Team.create!(user_id: user2.id, name: "Team 2", slogan: "Two", image_url: "team.jpg")

      user3 = User.create!(email: "user3@user.com", password: "userrr3")
      team3 = Team.create!(user_id: user3.id, name: "Team 3", slogan: "Three", image_url: "team.jpg")

      get :index

      expect(response).to render_template(:index)
    end
  end

  describe "POST #create" do
    it "successfully creates a new team with passing params", :aggregate_failures do
      expect { post :create, params: valid_team_params }.to change(Team, :count).by(1)

      new_team = Team.find_by(name: "Super Mario")

      expect(new_team).to be_present
      expect(response).to redirect_to root_path
    end

    it "does not create new team with invalid params", :aggregate_failures do
      expect { post :create, params: invalid_team_params }.to_not change(Team, :count)

      invalid_team = Team.find_by(slogan: "It's not me")

      expect(invalid_team).to_not be_present
      expect(response).to render_template(:new)
    end
  end

  def valid_team_params
    {
      team: {
        user_id: User.create!(email: "user4@user.com", password: "userrr4").id,
        name: "Super Mario",
        slogan: "It's a me",
        image_url: "mario.jpg"
      }
    }
  end

  def invalid_team_params
    {
      team: {
        user_id: User.create!(email: "user5@user.com", password: "userrr5").id,
        slogan: "It's not me",
        image_url: "mario.jpg"
      }
    }
  end
end