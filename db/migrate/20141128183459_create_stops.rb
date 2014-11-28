class CreateStops < ActiveRecord::Migration

  def up
    create_table :stops do |t|
      t.string :zone_id
      t.string :code
      t.string :name
      t.string :lat
      t.string :lon
      t.string :parent_station
      t.string :url
      t.string :desc
      t.string :location_type
      t.string :wheelchair_boarding
    end
    change_column :stops, :id, :string
  end

  def down
    drop_table :stops
  end

end
