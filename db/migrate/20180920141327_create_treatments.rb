class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      
      t.references :pharmacotherapy, index: true, foreign_key: true
      t.references :disease, index: true, foreign_key: true
      t.references :attendance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
