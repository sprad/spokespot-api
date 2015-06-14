class BikeRack < ActiveRecord::Base
  # Disable STI.  This is necessary because the BikeRack model has a "type"
  # attribute which Rails uses by default as the STI column.
  self.inheritance_column = :_type_disabled

  # Add in Geocoding support for BikeRacks
  reverse_geocoded_by :latitude, :longitude
end
