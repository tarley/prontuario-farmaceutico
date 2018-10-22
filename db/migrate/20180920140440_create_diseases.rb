class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      
      t.string :name
      t.text :description

      #t.references :treatment, index: true, foreign_key: true
      t.references :attendance, index: true, foreign_key: true
      #t.references :pharmacotherapy, index: true, foreign_key: true
      #t.references :prm, index: true, foreign_key: true
      #t.references :prm_cause, index: true, foreign_key: true
      

      t.timestamps null: false
      
      
      
    end
  end
end
