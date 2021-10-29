require 'spec_helper'
require 'rails_helper'

RSpec.describe Performance, type: :model do
  describe "#new" do
    it "is valid with all attributes" do
      performance = build(:performance)
      expect(performance).to be_valid
    end

    it "is not valid with missing attributes" do
      performance = build(:performance, points: nil)
      expect(performance).to_not be_valid
    end

    it "can not have negative points, assists, or rebounds" do
      performance = build(:performance, points: -2)
      expect(performance).to_not be_valid
    end
  end
end