class BikeRack < ActiveRecord::Base
  # Disable STI.  This is necessary because the BikeRack model has a "type"
  # attribute which Rails uses by default as the STI column.
  self.inheritance_column = :_type_disabled
end
