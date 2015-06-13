require "rails_helper"

RSpec.describe "Bike Rack API", :type => :request do

  before(:each) do
    host! "api.example.com"
  end

  describe "GET /bike_racks" do
    it "returns all the bike racks" do
      FactoryGirl.create(:metro_center_bike_rack)
      FactoryGirl.create(:columbia_heights_bike_rack)

      get '/v1/bike_racks', {}, { 'Accept' => Mime::JSON }

      body = json(response.body)
      bike_rack_names = body.map { |rack| rack[:name] }

      expect(response).to have_http_status(:success)
      expect(response.content_type).to eq Mime::JSON
      expect(bike_rack_names).to match_array(
        ["Metro Center Metro Station", "Columbia Heights Metro Station"])
    end
  end
end
