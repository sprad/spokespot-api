class RemoveTypeFromBikeRacks < ActiveRecord::Migration
  def change
    remove_column :bike_racks, :type, :string
  end
end
