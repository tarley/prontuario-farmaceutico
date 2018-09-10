class CreateTypeSexes < ActiveRecord::Migration
  def change
    create_table :type_sexes do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
