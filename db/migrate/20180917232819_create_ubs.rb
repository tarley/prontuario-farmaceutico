class CreateUbs < ActiveRecord::Migration
  def change
    create_table :ubs do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
