class AddColorsToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :color_id, :integer
  end
end
