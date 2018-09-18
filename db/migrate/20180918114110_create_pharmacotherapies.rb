class CreatePharmacotherapies < ActiveRecord::Migration
  def change
    create_table :pharmacotherapies do |t|
      t.string :medicine
      t.string :dosageSchedule
      t.string :safety
      t.string :effectiveness
      t.string :useDificulty
      t.integer :timeUse
      t.text :carePlan
      t.text :descriptionDisease
      
      t.references :disease, foreign_key: true
      t.references :attendance, foreign_key: true
      t.references :prm_cause, foreign_key: true

      t.timestamps null: false
    end
  end
end
