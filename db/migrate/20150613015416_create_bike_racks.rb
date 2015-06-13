class CreateBikeRacks < ActiveRecord::Migration
  def change
    create_table :bike_racks do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.integer :count, null: false
      t.string :type, null: false
      t.decimal :latitude, null: false, precision: 15, scale: 10
      t.decimal :longitude, null: false, precision: 15, scale: 10

      t.timestamps null: false
    end

    add_index :bike_racks, :city
    add_index :bike_racks, :state
    add_index :bike_racks, :zip_code
    add_index :bike_racks, [:latitude, :longitude], unique: true

  end
end
