class CreateRoutes < ActiveRecord::Migration
  
  def up
    create_table :routes do |t|
      t.string :agency_id
      t.string :short_name
      t.string :long_name
      t.string :route_type
      t.string :text_color
      t.string :color
      t.string :url
      t.string :desc
    end
    change_column :routes, :id, :string
  end

  def down
    drop_table :routes
  end

end
