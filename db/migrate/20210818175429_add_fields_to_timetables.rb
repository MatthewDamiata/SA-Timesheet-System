class AddFieldsToTimetables < ActiveRecord::Migration
  def change
    add_column :timetables, :machine, :string
  end
end
