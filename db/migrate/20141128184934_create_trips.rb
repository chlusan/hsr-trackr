class CreateTrips < ActiveRecord::Migration
  
  def up
    create_table :trips do |t|
      t.string :block_id
      t.string :route_id
      t.string :direction_id
      t.string :shape_id
      t.string :service_id
      t.string :headsign
      t.string :short_name
      t.string :wheelchair_boarding
      t.string :bikes_allowed
    end
    change_column :trips, :id, :string
  end

  def down
    drop_table :trips
  end

end
