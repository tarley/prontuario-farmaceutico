class CreateAttendancesteste < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.text :general_screen
      t.datetime :attendance_date
      
      
      t.references :pacient, index: true, foreign_key: true
      t.references :prm, index: true, foreign_key: true
      t.references :prm_cause, index: true, foreign_key: true
      t.references :disease, index: true, foreign_key: true
      t.references :pharmacotherapy, index: true, foreign_key: true
      t.references :sfc, index: true, foreign_key: true
      t.references :care_plan, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
