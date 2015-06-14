module API::V1
  class BikeRacksController < ApplicationController
    respond_to :json

    MAX_SEARCH_DISTANCE_MILES = 1

    def index
      @bike_racks = BikeRack.near(search_parameter, MAX_SEARCH_DISTANCE_MILES)
    end

    private

    def search_parameter
      params.permit(:s)[:s]
    end

  end
end
