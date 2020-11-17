class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.string :route
      t.string :name
      t.integer :minute

      t.timestamps
    end
  end
end
