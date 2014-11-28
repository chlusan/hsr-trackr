class CreateAgencies < ActiveRecord::Migration

  def up
    create_table :agencies do |t|
      t.string :name
      t.string :phone
      t.string :url
      t.string :fare_url
      t.string :timezone
      t.string :lang
    end
    change_column :agencies, :id, :string
  end

  def down
    drop_table :agencies
  end

end
