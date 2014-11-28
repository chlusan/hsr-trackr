class CreateShapes < ActiveRecord::Migration

  def up
    create_table :shapes do |t|
      t.string :pt_lat
      t.string :pt_lon
      t.string :pt_sequence
      t.string :dist_traveled
    end
    change_column :shapes, :id, :string
  end

  def down
    drop_table :shapes
  end

end
