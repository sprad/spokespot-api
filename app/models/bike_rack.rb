class BikeRack < ActiveRecord::Base
  # Add in Geocoding support for BikeRacks
  reverse_geocoded_by :latitude, :longitude
end
