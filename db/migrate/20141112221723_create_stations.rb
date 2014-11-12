class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :prev_station
      t.string :next_station

      t.timestamps
    end
  end
end
