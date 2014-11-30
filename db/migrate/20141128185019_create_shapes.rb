class CreateShapes < ActiveRecord::Migration

  def up
    create_table :shapes, { id: false } do |t|
      t.string :shape_id
      t.string :pt_lat
      t.string :pt_lon
      t.string :pt_sequence
      t.string :dist_traveled
    end
  end

  def down
    drop_table :shapes
  end

end
