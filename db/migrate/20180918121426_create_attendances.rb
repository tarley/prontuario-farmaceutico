class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.datetime :attendance_date
      t.text :general_screen
      t.timestamps null: false
    end
  end
end
