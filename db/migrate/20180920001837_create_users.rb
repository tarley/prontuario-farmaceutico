class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.integer :profile

      t.references :name, index: true
      t.references :email, index: true
      t.references :profile, index: true

      t.timestamps null: false
    end
  end
end
