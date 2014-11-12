class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|
      t.string :train
      t.string :time

      t.timestamps
    end
  end
end
