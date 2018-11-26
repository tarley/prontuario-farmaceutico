class CreateCarePlans < ActiveRecord::Migration
  def change
    create_table :care_plans do |t|
      t.string :therapeutic_goal
      t.string :conduct
      t.datetime :results_date
      t.text :anothers_conduct
      
      
      
      t.references :pharmacotherapy, index: true, foreign_key: true
      t.references :prm, index: true, foreign_key: true
      t.references :sfc, index: true, foreign_key: true
      t.references :prmCause, index: true, foreign_key: true
      t.references :attendance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
