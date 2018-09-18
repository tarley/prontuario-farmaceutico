class CreatePrmCauses < ActiveRecord::Migration
  def change
    create_table :prm_causes do |t|
      t.string :description

      t.references :prm, foreign_key: true
      t.timestamps null: false
    end
  end
end
