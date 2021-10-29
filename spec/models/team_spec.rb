require 'spec_helper'
require 'rails_helper'

RSpec.describe Team, type: :model do
  describe "#new" do
    it "is valid with all attributes" do
      team = build(:team)
      expect(team).to be_valid
    end

    it "is not valid with missing attributes" do
      team = build(:team, name: nil)
      expect(team).to_not be_valid
    end

    it "needs to have a unique name" do
      team1 = create(:team, name: "Kyle")
      team2 = build(:team, name: "Kyle")
      expect(team2).to_not be_valid
    end
  end
end