class CreatePrmCauses < ActiveRecord::Migration
  def change
    create_table :prm_causes do |t|
      t.string :description
      
      t.references :prm, index: true, foreign_key: true
      t.references :prmCause, index: true, foreign_key: true
      t.references :attendance, index: true, foreign_key: true
      t.references :disease, index: true, foreign_key: true
      t.references :pacient, index: true, foreign_key: true
      
      
      t.references :treatment, index: true, foreign_key: true
      t.references :prm, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
