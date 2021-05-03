class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.string :notes
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
