class AddLonLatToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :lon, :decimal, default: -73.5973836
    add_column :flats, :lat, :decimal, default: 45.5242525
  end
end
