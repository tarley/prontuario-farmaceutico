class CreateSfcs < ActiveRecord::Migration
  def change
    create_table :sfcs do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
