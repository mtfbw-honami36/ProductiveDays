class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :name, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time
      t.integer :countdown_id, null: false
      t.timestamps
    end
  end
end
