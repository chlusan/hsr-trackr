class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :trip_id
      t.integer :stop_id
      t.string :capacity
      t.string :driver
    end
  end
end
