class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
