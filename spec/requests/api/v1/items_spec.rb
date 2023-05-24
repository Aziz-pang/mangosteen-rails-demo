require 'rails_helper'

RSpec.describe "Api::V1::Items", type: :request do
  describe "create item" do
    it "returns http success" do
      expect {
        post "/api/v1/items", params: {amount:100, user_id: 1}
      }.to change { Item.count }.by 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "get items" do
    it "returns http success" do
      11.times { Item.create amount: 99, user_id: 2}
      expect(Item.count).to eq 11
      get "/api/v1/items"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['resources'].size).to eq 10
      get "/api/v1/items?page=2"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['resources'].size).to eq 1
    end
  end
end
