class CreatePrms < ActiveRecord::Migration
  def change
    create_table :prms do |t|
      t.string :description
      
      t.references :prm_causes, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
