require "rails_helper"

RSpec.shared_examples "a response with no bike racks" do |search_string|
  it "does not return any bike racks" do
    get "/v1/bike_racks/?s=#{search_string}", {}, { 'Accept' => Mime::JSON }

    expect(response).to have_http_status(:success)
    expect(response.content_type).to eq Mime::JSON
    expect(json(response.body)).to be_empty
  end
end

RSpec.shared_examples "a response with bike racks" do |search_string|
  it "returns bike racks near the search origin" do
    get "/v1/bike_racks/?s=#{search_string}", {}, { 'Accept' => Mime::JSON }

    body = json(response.body)
    bike_rack_names = body.map { |rack| rack[:name] }

    expect(response).to have_http_status(:success)
    expect(response.content_type).to eq Mime::JSON
    expect(bike_rack_names).to match_array(
      ["Metro Center Metro Station", "Farragut North Metro Station"])
  end
end

RSpec.describe "Bike Rack API", :type => :request do

  before(:each) do
    host! "api.example.com"
  end

  # Fixture Information:
  #
  # We use the White House as the point of orgin for performing our searches.
  #
  # For now the application will only find bike racks located within 1 mile of
  # the point of origin.
  #
  # Bike racks within 1 mile of the White House:
  #   - Metro Center Metro Station
  #   - Farragut North Metro Station
  let!(:metro_center_bike_rack) { FactoryGirl.create(:metro_center_bike_rack) }
  let!(:farragut_north_bike_rack) {
    FactoryGirl.create(:farragut_north_bike_rack) }
  # Bike racks more than 1 mile away from the White House:
  #   - Columbia Heights Metro Station
  let!(:columbia_heights_bike_rack) {
    FactoryGirl.create(:columbia_heights_bike_rack) }

  describe "GET /bike_racks/?s=" do

    context "when searching by geocoordinates" do
      white_house_geocordinates = "38.898748,-77.037684"
      it_behaves_like "a response with bike racks", white_house_geocordinates
    end

    context "when searching by address" do
      white_house_address = "1600 Pennsylvania Ave NW, Washington DC 20502"
      it_behaves_like "a response with bike racks", white_house_address
    end

    context "when an invalid address is given" do
      it_behaves_like "a response with no bike racks", "garbage@$QGQ"
    end

    context "when no search string is entered" do
      it_behaves_like "a response with no bike racks"
    end

  end
end
