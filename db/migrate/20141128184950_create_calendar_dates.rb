class CreateCalendarDates < ActiveRecord::Migration

  def up
    create_table :calendar_dates, { id: false } do |t|
      t.string :service_id
      t.string :date
      t.string :exception_type
    end
  end

  def down
    drop_table :calendar_dates
  end

end
