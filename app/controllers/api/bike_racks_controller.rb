module API
  class BikeRacksController < ApplicationController
    respond_to :json

    def index
      @bike_racks = BikeRack.limit(10)
    end

  end
end
