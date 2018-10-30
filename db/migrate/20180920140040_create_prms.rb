class CreatePrms < ActiveRecord::Migration
  def change
    create_table :prms do |t|
      t.string :description
      
      
      
      
      t.references :pharmacotherapy, index: true, foreign_key: true
      t.references :prmCause, index: true, foreign_key: true
      t.references :attendance, index: true, foreign_key: true
      t.references :disease, index: true, foreign_key: true
      t.references :pacient, index: true, foreign_key: true
      #t.references :treatment, index: true, foreign_key: true
      

      t.timestamps null: false
    end
  end
end
