require 'rails_helper'

RSpec.describe "DiceRolls", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/dice_rolls/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/dice_rolls", params: { dice_count: 2, dice_sides: [6, 8] }
      expect(response).to have_http_status(:success)
    end
  end
end
