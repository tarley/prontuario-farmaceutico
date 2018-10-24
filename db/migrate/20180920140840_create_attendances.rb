class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.text :general_screen
      t.datetime :attendance_date
      
     # t.integer :treatment_id
      #t.integer :pharmacotherapy_id
     # t.integer :prm_id
     # t.integer :prm_cause_id
      #t.integer :care_plan_id
     # t.integer :sfc_id
      #t.integer :pacient_id
      
      
      t.references :pharmacotherapy, index: true, foreign_key: true
      t.references :pacient, index: true, foreign_key: true
      #t.references :prm, index: true, foreign_key: true
      #t.references :prm_cause, index: true, foreign_key: true
      #t.references :disease, index: true, foreign_key: true
      #t.references :pharmacotherapy, index: true, foreign_key: true
      #t.references :sfc, index: true, foreign_key: true
      #t.references :care_plan, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
