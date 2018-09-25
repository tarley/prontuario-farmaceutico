class CreatePrms < ActiveRecord::Migration
  def change
    create_table :prms do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
