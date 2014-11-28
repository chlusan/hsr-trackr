class CreateCalendars < ActiveRecord::Migration

  def up
    create_table :calendars, { id: false } do |t|
      t.string :service_id
      t.string :start_date
      t.string :end_date
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday
    end
  end

  def down
    drop_table :calendars
  end

end
