module API
  class BikeRacksController < ApplicationController
    def index
      render json: BikeRack.all
    end
  end
end
