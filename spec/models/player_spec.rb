require 'spec_helper'
require 'rails_helper'

RSpec.describe Player, type: :model do
  describe "#new" do
    it "is valid with all atrributes" do
      player = build(:player)
      expect(player).to be_valid
    end

    it "is not valid with missing attributes" do
      player = build(:player, name: nil)
      expect(player).to_not be_valid
    end

    it "needs to have a unique name" do
      player1 = create(:player, name: "Bob")
      player2 = build(:player, name: "Bob")
      expect(player2).to_not be_valid
    end
  end

  # describe "#per_game_stats" do
  #   it "returns a player's average stats for all of their games" do
  #     player = create(:player)
  #     build(:performance, player_id: player.id)
  #     build(:performance, player_id: player.id)
  #     build(:performance, player_id: player.id)
  #     expect(player.per_game_stats(:points)).to eq(20)
  #   end
  # end
end